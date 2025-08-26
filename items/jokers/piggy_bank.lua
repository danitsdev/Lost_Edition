local jokerInfo = {
    key = "piggy_bank",
    pos = LOSTEDMOD.funcs.coordinate(35),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { chips = 0, chips_per_dollar = 4 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_per_dollar } }
    end,
    calculate = function(self, card, context)
        if context.round_eval and not context.blueprint then
            total_interest = G.GAME.interest_amount*math.min(math.floor(to_number(G.GAME.dollars)/5), G.GAME.interest_cap/5)
            card.ability.extra.chips = card.ability.extra.chips + total_interest * card.ability.extra.chips_per_dollar
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
                card = card
            }
        end
        if context.joker_main and to_big(card.ability.extra.chips) > to_big(0) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

return jokerInfo