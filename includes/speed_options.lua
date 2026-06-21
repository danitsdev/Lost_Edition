-- Based on the Nopeus mod, with minor adaptations for the Lost Edition mod.
-- Credits to the Nopeus creators (jenwalter666, stupxd).

LostedSpeed = {}
function LostedSpeed.FF()
    return G.SETTINGS.FASTFORWARD
end

G.FUNCS.change_fastforward = function(args)
    G.SETTINGS.FASTFORWARD = (
        args.to_val == localize('k_fast_forward_planets') and 1 or
        args.to_val == localize('k_fast_forward_on') and 2 or
        args.to_val == localize('k_fast_forward_unsafe') and 3 or
        0
    )
    G:save_settings()
end

G.FUNCS.change_statustext = function(args)
    G.SETTINGS.STATUSTEXT = (
        args.to_val == localize('k_status_text_less_annoying') and 1 or
        args.to_val == localize('k_status_text_no_misc') and 2 or
        args.to_val == localize('k_status_text_none') and 3 or
        0
    )
    G:save_settings()
end

function G.UIDEF.lostedspeed_options()
    local speeds = create_option_cycle({
        label = localize('b_set_gamespeed'),
        scale = 0.8,
        options = {0.25, 0.5, 1, 2, 3, 4, 8, 16, 32, 64, 128},
        opt_callback = 'change_gamespeed',
        current_option = (
            G.SETTINGS.GAMESPEED == 0.25 and 1 or
            G.SETTINGS.GAMESPEED == 0.5 and 2 or
            G.SETTINGS.GAMESPEED == 1 and 3 or
            G.SETTINGS.GAMESPEED == 2 and 4 or
            G.SETTINGS.GAMESPEED == 3 and 5 or
            G.SETTINGS.GAMESPEED == 4 and 6 or
            G.SETTINGS.GAMESPEED == 8 and 7 or
            G.SETTINGS.GAMESPEED == 16 and 8 or
            G.SETTINGS.GAMESPEED == 32 and 9 or
            G.SETTINGS.GAMESPEED == 64 and 10 or
            G.SETTINGS.GAMESPEED == 128 and 11 or
            3
        )
    })
    return speeds
end

function G.UIDEF.lostedspeed_fastforward_options()
    if not G.SETTINGS.FASTFORWARD then G.SETTINGS.FASTFORWARD = 0 end
    local ff = create_option_cycle({
        label = localize('k_fast_forward_label'),
        w = 5,
        scale = 0.8,
        options = {
            localize('k_fast_forward_off'),
            localize('k_fast_forward_planets'),
            localize('k_fast_forward_on'),
            localize('k_fast_forward_unsafe')
        },
        opt_callback = 'change_fastforward',
        current_option = G.SETTINGS.FASTFORWARD + 1
    })
    return ff
end

function G.UIDEF.lostedspeed_statustext_options()
    if not G.SETTINGS.STATUSTEXT then G.SETTINGS.STATUSTEXT = 0 end
    local st = create_option_cycle({
        label = localize('k_status_text_label'),
        w = 5,
        scale = 0.8,
        options = {
            localize('k_status_text_all'),
            localize('k_status_text_less_annoying'),
            localize('k_status_text_no_misc'),
            localize('k_status_text_none')
        },
        opt_callback = 'change_statustext',
        current_option = G.SETTINGS.STATUSTEXT + 1
    })
    return st
end

local cest = card_eval_status_text
function card_eval_status_text(card, eval_type, amt, percent, dir, extra)
    if (G.SETTINGS.STATUSTEXT and G.SETTINGS.STATUSTEXT == 3) or (G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD > 2) then
        return
    end

    if G.SETTINGS.STATUSTEXT and G.SETTINGS.STATUSTEXT == 2 then
        if eval_type == 'extra' then return end
    end

    if G.SETTINGS.STATUSTEXT and G.SETTINGS.STATUSTEXT >= 1 then
        local msg = ((extra or {}).message or '')
        if msg == localize('k_again_ex') or msg == 'Again?' or msg == localize('k_upgrade_ex') then
            return
        end
    end

    return cest(card, eval_type, amt, percent, dir, extra)
end

local uhtr = update_hand_text
function update_hand_text(config, vals)
    if G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD >= 2 then
        config.immediate = true
        config.delay = 0
        config.blocking = false
        vals.StatusText = nil
    end
    return uhtr(config, vals)
end

local delay_ref = delay
function delay(time, queue)
    if G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD > 1 then
        return
    end
    return delay_ref(time, queue)
end

local original_event_init = Event.init
function Event:init(config)
    original_event_init(self, config)
    if G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD > 2 then
        self.blocking = false
        self.blockable = false
        if self.trigger == 'ease' then self.delay = 0.0001 else self.delay = 0 end
    end
end

local lvupref = level_up_hand
function level_up_hand(card, hand, instant, amount)
    if G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD > 0 and not instant then
        instant = true
        lvupref(card, hand, instant, amount)
        if card then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
            return true end }))
        end
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0.3}, {chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level, StatusText = true})
        delay(1.3)
    else
        lvupref(card, hand, instant, amount)
    end
end

local ccr = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    if G.SETTINGS.FASTFORWARD and G.SETTINGS.FASTFORWARD > 1 and _type == 'Joker' and area ~= G.jokers then
        local eternal_perishable_poll = pseudorandom((area == G.pack_cards and 'packetper' or 'etperpoll')..G.GAME.round_resets.ante)
        local eternal = G.GAME.modifiers.all_eternal or (G.GAME.modifiers.enable_eternals_in_shop and eternal_perishable_poll > 0.7)
        local perish = G.GAME.modifiers.enable_perishables_in_shop and ((eternal_perishable_poll > 0.4) and (eternal_perishable_poll <= 0.7)) and not eternal
        local rental = G.GAME.modifiers.enable_rentals_in_shop and pseudorandom((area == G.pack_cards and 'packssjr' or 'ssjr')..G.GAME.round_resets.ante) > 0.7
        local card = ccr(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
        if card then
            if eternal then
                card:set_eternal(true)
            elseif perish then
                card:set_perishable(true)
            end
            if rental then
                card:set_rental(true)
            end
        end
        return card
    else
        return ccr(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    end
end

local gfecr = G.FUNCS.end_consumeable
if gfecr then
    G.FUNCS.end_consumeable = function(e, delayfac)
        delayfac = delayfac or 1
        gfecr(e, delayfac)
        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.2*delayfac,
            blocking = true,
            blockable = false,
            func = function()
                if G.pack_cards then
                    G.pack_cards:remove()
                    G.pack_cards = nil
                end
            return true
        end}))
    end
end
