local jokerInfo = {
    key = "big_joker",
    pos = LOSTEDMOD.funcs.coordinate(66), 
    display_size = { w = 71 * 1.1, h = 95 * 1.1 },
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8, 
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { mult = 0, mult_gain = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 10 and
            not context.blueprint then
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
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                {
                    ref_table = "card.ability.extra",
                    ref_value = "mult",
                    retrigger_type = "mult"
                }
            },
            text_config = { colour = G.C.MULT }
        }
    end
}

return jokerInfo
