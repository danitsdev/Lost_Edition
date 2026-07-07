local DEFAULT_STEEL_XMULT = 1.5

local function for_each_playing_card(func)
    for _, playing_card in ipairs(G.playing_cards or {}) do
        if playing_card and playing_card.ability then
            func(playing_card)
        end
    end
end

local function apply_welder_to_card(playing_card, value)
    if SMODS.has_enhancement(playing_card, 'm_steel') then
        if playing_card.ability.losted_welder_base_h_x_mult == nil then
            playing_card.ability.losted_welder_base_h_x_mult = playing_card.ability.h_x_mult or DEFAULT_STEEL_XMULT
        end
        playing_card.ability.h_x_mult = value
    end
end

local function apply_welder_to_all_steel(value)
    for_each_playing_card(function(playing_card)
        apply_welder_to_card(playing_card, value)
    end)
end

local function restore_welder_cards()
    for_each_playing_card(function(playing_card)
        if playing_card.ability.losted_welder_base_h_x_mult ~= nil then
            playing_card.ability.h_x_mult = playing_card.ability.losted_welder_base_h_x_mult
            playing_card.ability.losted_welder_base_h_x_mult = nil
        end
    end)
end

local function get_other_active_welder(card)
    if not (G and G.jokers and G.jokers.cards) then return nil end
    for _, joker in ipairs(G.jokers.cards) do
        if joker ~= card and not joker.debuff and joker.config and joker.config.center and
            joker.config.center.key == 'j_losted_welder' and joker.ability and
            joker.ability.extra and joker.ability.extra.steel_xmult then
            return joker
        end
    end
end

local jokerInfo = {
    key = "welder",
    pos = LOSTEDMOD.funcs.coordinate(7),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    config = {
        extra = {
            steel_xmult = 2.5,
            unlock_req = 10
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_steel
        return {
            vars = {card.ability.extra.steel_xmult}
        }
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {
            vars = {self.config.extra.unlock_req, localize { type = 'name_text', key = 'm_steel', set = 'Enhanced' }},
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        apply_welder_to_all_steel(card.ability.extra.steel_xmult)
    end,
    remove_from_deck = function(self, card, from_debuff)
        local other_welder = get_other_active_welder(card)
        if other_welder then
            apply_welder_to_all_steel(other_welder.ability.extra.steel_xmult)
        else
            restore_welder_cards()
        end
    end,
    calculate = function(self, card, context)
        if context.individual and context.other_card and
            SMODS.has_enhancement(context.other_card, 'm_steel') then
            apply_welder_to_card(context.other_card, card.ability.extra.steel_xmult)
        end
        if context.before and context.main_eval and not context.blueprint then
            apply_welder_to_all_steel(card.ability.extra.steel_xmult)
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'modify_deck' then
            local count = 0
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if SMODS.has_enhancement(playing_card, 'm_steel') then count = count + 1 end
                if count >= self.config.extra.unlock_req then
                    return true
                end
            end
        end
        return false
    end
}

return jokerInfo
