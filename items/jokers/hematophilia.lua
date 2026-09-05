local jokerInfo = {
    key = "hematophilia",
    pos = LOSTEDMOD.funcs.coordinate(34),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { mult = 0, mult_gain = 5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
    end,
    calculate = function(self, card, context)
        if context.remove_playing_cards and not context.blueprint then
            local destroyed_count = #(context.removed or {})
            if destroyed_count > 0 then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "mult",
                    scalar_value = "mult_gain",
                    operation = function(ref_table, ref_value, initial, change)
                        ref_table[ref_value] = initial + change * destroyed_count
                    end,
                    scaling_message = {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.MULT
                    }
                })
            end
        end

        if context.joker_type_destroyed
            and context.card ~= card
            and context.card
            and context.card.ability
            and context.card.ability.set == 'Joker'
            and not context.blueprint then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "mult",
                scalar_value = "mult_gain",
                scaling_message = {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                }
            })
        end
        
        if context.joker_main then
            if to_big(card.ability.extra.mult) > to_big(0) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}

return jokerInfo
