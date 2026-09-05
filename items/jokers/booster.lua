local jokerInfo = {
    key = "booster",
    pos = LOSTEDMOD.funcs.coordinate(68),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { chips = 0, chips_gain = 10 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_gain } }
    end,
    calculate = function(self, card, context)
        if context.open_booster and not context.blueprint then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "chips",
                scalar_value = "chips_gain",
                scaling_message = {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.CHIPS
                }
            })
        end
        if context.joker_main then
            if to_big(card.ability.extra.chips) > to_big(0) then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}

return jokerInfo
