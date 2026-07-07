local jokerInfo = {
    key = "passion_juice",
    pos = LOSTEDMOD.funcs.coordinate(19),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,
    config = { extra = { xchips = 1, xchips_gain = 0.1, odds = 1000 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_passion_juice')
        return { vars = { card.ability.extra.xchips, card.ability.extra.xchips_gain, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and not context.losted_quantum_copy then
            card.ability.extra.xchips = card.ability.extra.xchips + card.ability.extra.xchips_gain
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'losted_passion_juice', 1, card.ability.extra.odds, 'losted_passion_juice') then
                LOSTEDMOD.funcs.destroy_joker(card)
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
            if card.ability.extra.xchips > 1 then
                return {
                    xchips = card.ability.extra.xchips
                }
            end
        end
    end,
    in_pool = function(self, args)
        return G.GAME.pool_flags.losted_passion_fruit_extinct
    end
}

return jokerInfo
