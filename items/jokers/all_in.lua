local jokerInfo = {
    key = "all_in",
    pos = LOSTEDMOD.funcs.coordinate(87),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { discards = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            local extra_discards = card.ability.extra.discards
            local should_set_hands = not G.GAME.current_round.losted_all_in_hands_set
            if should_set_hands then
                G.GAME.current_round.losted_all_in_hands_set = true
            end
            event({
                func = function()
                    if should_set_hands then
                        local diff = 1 - G.GAME.current_round.hands_left
                        if diff ~= 0 then ease_hands_played(diff) end
                    end
                    ease_discard(extra_discards)
                    return true
                end
            })
            return {
                message = localize('k_losted_all_in'),
                colour = G.C.RED
            }
        end
    end,
}

return jokerInfo
