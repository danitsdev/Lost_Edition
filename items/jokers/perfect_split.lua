local jokerInfo = {
    key = "perfect_split",
    pos = LOSTEDMOD.funcs.coordinate(4),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { mult = 2, odds = 2 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_perfect_split')
        return { vars = { numerator, denominator, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card and context.other_card.ability and 
                SMODS.pseudorandom_probability(card, 'losted_perfect_split', 1, card.ability.extra.odds, 'losted_perfect_split') then
                context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) +
                    (card.ability.extra.mult or 0)
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                }
            end
        end
    end
}

return jokerInfo
