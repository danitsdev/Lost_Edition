local jokerInfo = {
    key = "last_resort",
    pos = LOSTEDMOD.funcs.coordinate(15),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
    config = { extra = { shots = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.shots } }
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
            juice_card_until(card, eval, true)
        end
        
        if context.pre_discard and not context.blueprint and
            G.GAME.current_round.discards_used <= 0 and #context.full_hand == 2 then

            play_sound('losted_shot', 1.0, 0.8)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                blockable = false,
                func = function()
                    LOSTEDMOD.funcs.destroy_cards(context.full_hand)
                    return true
                end
            }))
        end
    end
}

return jokerInfo
