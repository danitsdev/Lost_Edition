local jokerInfo = {
    key = "step_by_step",
    pos = LOSTEDMOD.funcs.coordinate(44), 
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    unlocked = true,
    perishable_compat = false,
    config = { extra = { mult_gain = 4, mult = 0 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, localize('Straight', 'poker_hands'), card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and
            next(context.poker_hands['Straight']) then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "mult",
                scalar_value = "mult_gain",
                scaling_message = {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.RED
                }
            })
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

return jokerInfo
