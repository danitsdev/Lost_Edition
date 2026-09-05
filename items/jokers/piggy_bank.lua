local jokerInfo = {
    key = "piggy_bank",
    pos = LOSTEDMOD.funcs.coordinate(35),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { chips = 0, chips_per_dollar = 4 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_per_dollar } }
    end,
    calculate = function(self, card, context)
        if context.round_eval and not context.blueprint then
            local total_interest = (G.GAME.interest_amount or 0) * math.min(
                math.floor(to_number(G.GAME.dollars)/5),
                (G.GAME.interest_cap or 25)/5
            )
            if total_interest > 0 then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "chips",
                    scalar_value = "chips_per_dollar",
                    operation = function(ref_table, ref_value, initial, change)
                        ref_table[ref_value] = initial + total_interest * change
                    end,
                    scaling_message = {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.CHIPS
                    }
                })
            end
        end
        if context.joker_main and to_big(card.ability.extra.chips) > to_big(0) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

return jokerInfo
