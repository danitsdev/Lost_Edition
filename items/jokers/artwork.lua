local jokerInfo = {
    key = "artwork",
    pos = LOSTEDMOD.funcs.coordinate(59), 
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 5,
    unlocked = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    config = { extra = { price_gain = 5, odds = 12 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_artwork')
        return { vars = { card.ability.extra.price_gain, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'losted_artwork', 1, card.ability.extra.odds, 'losted_artwork') then
                LOSTEDMOD.funcs.destroy_joker(card)
                return {
                    message = localize('k_extinct_ex'),
                    colour = G.C.RED
                }
            else
                card.ability.extra_value = (card.ability.extra_value or 0) + card.ability.extra.price_gain
                card:set_cost()
                return {
                    message = localize('k_val_up'),
                    colour = G.C.MONEY
                }
            end
        end
    end
}

return jokerInfo
