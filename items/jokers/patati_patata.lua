local MODES = {
    PATATA = {
        key = "PATATA",
        name = "Patatá",
        color = G.C.MULT,
        pos = 71,
        soul_pos = 81,
        stat_key = "k_mult",
        value_key = "xmult",
        class_name_key = "k_even",
        card_list_text = "(10, 8, 6, 4, 2)"
    },
    PATATI = {
        key = "PATATI",
        name = "Patati",
        color = G.C.CHIPS,
        pos = 72,
        soul_pos = 82,
        stat_key = "k_chips",
        value_key = "xchips",
        class_name_key = "k_odd",
        card_list_text = "(A, 9, 7, 5, 3)"
    }
}

-- Helper function to get current card mode
local function get_mode(card)
    local mode_key = (card.ability and card.ability.extra and card.ability.extra.mode) or "PATATA"
    return MODES[mode_key] or MODES.PATATA
end

local jokerInfo = {
    key = "patati_patata",
    pos = LOSTEDMOD.funcs.coordinate(MODES.PATATA.pos),
    soul_pos = LOSTEDMOD.funcs.coordinate(MODES.PATATA.soul_pos),
    atlas = 'losted_jokers',
    rarity = 4, 
    cost = 20,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { mode = "PATATA", xchips = 2, xmult = 2 } },
    loc_vars = function(self, info_queue, card)
        local current_mode = get_mode(card)
        local next_mode = current_mode.key == "PATATA" and MODES.PATATI or MODES.PATATA
        return {
            vars = {
                current_mode.name,
                localize(current_mode.class_name_key),
                card.ability.extra[current_mode.value_key],
                localize(current_mode.stat_key),
                current_mode.card_list_text,
                next_mode.name,
                colours = { current_mode.color, next_mode.color },
            }
        }
    end,    

    add_to_deck = function(self, card)
        play_sound('losted_patati_patata')
    end,

    calculate = function(self, card, context)
        -- Use an event to delay the mode switch until after scoring animations/messages
        if context.after and context.cardarea == G.jokers and not context.blueprint then
            local current_mode = get_mode(card)
            local new_mode = current_mode.key == "PATATA" and MODES.PATATI or MODES.PATATA
            G.E_MANAGER:add_event(Event({
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {
                        message = new_mode.name,
                        colour = new_mode.color
                    })
                    card.ability.extra.mode = new_mode.key
                    if card.children and card.children.center then
                        card.children.center:set_sprite_pos(LOSTEDMOD.funcs.coordinate(new_mode.pos))
                        if card.children.floating_sprite then
                            card.children.floating_sprite:set_sprite_pos(LOSTEDMOD.funcs.coordinate(new_mode.soul_pos))
                        else
                            card.children.floating_sprite = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[card.atlas or 'losted_jokers'], LOSTEDMOD.funcs.coordinate(new_mode.soul_pos))
                            card.children.floating_sprite.role = {draw_major = card}
                            card.children.floating_sprite.states.hover = {can = false}
                            card.children.floating_sprite.states.click = {can = false}
                        end
                    end
                    return true
                end
            }))
        end

        if context.individual and context.cardarea == G.play and context.other_card then
            local id
            pcall(function() id = context.other_card:get_id() end)
            if id then
                local current_mode = get_mode(card)
                if current_mode.key == "PATATA" then
                    if id and id <= 10 and id >= 2 and id % 2 == 0 then
                        return { xmult = card.ability.extra.xmult }
                    end
                elseif current_mode.key == "PATATI" then
                    if (id and id >= 3 and id <= 9 and id % 2 == 1) or id == 14 then
                        return { xchips = card.ability.extra.xchips }
                    end
                end
            end
        end
    end,

    set_sprites = function(self, card, front)
        local mode = get_mode(card)
        if self.discovered or card.bypass_discovery_center then
            if card.ability and card.ability.extra and card.ability.extra.mode then
                card.children.center:set_sprite_pos(LOSTEDMOD.funcs.coordinate(mode.pos))
                if card.children.floating_sprite then
                    card.children.floating_sprite:set_sprite_pos(LOSTEDMOD.funcs.coordinate(mode.soul_pos))
                end
            end
        end
    end,

    update = function(self, card)
        local mode = get_mode(card)
        if card.VT and card.VT.w <= 0 then
            card.children.center:set_sprite_pos(LOSTEDMOD.funcs.coordinate(mode.pos))
            if card.children.floating_sprite then
                card.children.floating_sprite:set_sprite_pos(LOSTEDMOD.funcs.coordinate(mode.soul_pos))
            end
        end
    end
}

return jokerInfo
