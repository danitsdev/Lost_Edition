local jokerInfo = {
    key = "disruption",
    pos = LOSTEDMOD.funcs.coordinate(17),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 5,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { xmult_gain = 0.1 } },
    loc_vars = function(self, info_queue, card)
        local xmult = 1 + (G.GAME.hands[G.GAME.last_hand_played] and G.GAME.hands[G.GAME.last_hand_played].played or 0) * card.ability.extra.xmult_gain
        return { vars = { card.ability.extra.xmult_gain, xmult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local times_played = G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played or 0
            local xmult = 1 + (times_played * card.ability.extra.xmult_gain)
            
            if xmult > 1 then
                return {
                    xmult = xmult
                }
            end
        end
    end
}

return jokerInfo
