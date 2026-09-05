local jokerInfo = {
    key = "jimball",
    pos = LOSTEDMOD.funcs.coordinate(0),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { mult_gain = 1, chips_gain = 4, mult = 2, chips = 10 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.chips_gain, card.ability.extra.mult, card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "mult",
                scalar_value = "mult_gain",
                no_message = true
            })
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "chips",
                scalar_value = "chips_gain",
                no_message = true
            })
            return {
                message = localize('k_blind_selected_ex'),
                colour = G.C.MULT
            }
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                chips = card.ability.extra.chips
            }
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                {
                    ref_table = "card.ability.extra",
                    ref_value = "chips",
                    retrigger_type = "mult",
                    colour = G.C.CHIPS
                },
                { text = " +" },
                {
                    ref_table = "card.ability.extra",
                    ref_value = "mult",
                    retrigger_type = "mult",
                    colour = G.C.MULT
                }
            }
        }
    end
}

return jokerInfo
