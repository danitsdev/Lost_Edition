local jokerInfo = {
    key = "passion_fruit",
    pos = LOSTEDMOD.funcs.coordinate(18),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 5,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,
    config = { extra = { chips = 0, chips_gain = 5, odds = 6 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_passion_fruit')
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_gain, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and not context.losted_quantum_copy then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_gain
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'losted_passion_fruit', 1, card.ability.extra.odds, 'losted_passion_fruit') then
                LOSTEDMOD.funcs.destroy_joker(card, function()
                    G.GAME.pool_flags.losted_passion_fruit_extinct = true
                end)
                return {
                    message = localize('k_extinct_ex')
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        if context.joker_main then
            if to_big(card.ability.extra.chips) > to_big(0) then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end,
    in_pool = function(self, args)
        return not G.GAME.pool_flags.losted_passion_fruit_extinct
    end
}

return jokerInfo
