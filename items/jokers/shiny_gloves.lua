local jokerInfo = {
    key = "shiny_gloves",    
    pos = LOSTEDMOD.funcs.coordinate(53), 
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    unlocked = true,
    perishable_compat = false,
    config = { extra = { mult_gain = 4, mult = 0 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, localize('Flush', 'poker_hands'), card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and
            not context.losted_quantum_copy and next(context.poker_hands['Flush']) then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.RED
            }
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

return jokerInfo
