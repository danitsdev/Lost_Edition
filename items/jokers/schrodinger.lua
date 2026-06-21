local jokerInfo = {
    key = "schrodinger",
    pos = LOSTEDMOD.funcs.coordinate(13),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 5,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { chips = 150, odds = 2 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_schrodinger')
        return { vars = { numerator, denominator, card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if SMODS.pseudorandom_probability(card, 'losted_schrodinger', 1, card.ability.extra.odds, 'losted_schrodinger') then
                return {
                    chips = card.ability.extra.chips
                }
            else
                return {
                    message = localize('k_schrodinger_ex'),
                    colour = G.C.CHIPS
                }
            end
        end
    end
}

return jokerInfo
