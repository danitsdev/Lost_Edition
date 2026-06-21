local jokerInfo = {
    key = "red_joker",
    pos = LOSTEDMOD.funcs.coordinate(48),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 5,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { mult_per_group = 2, cards_per_group = 5 } },
    loc_vars = function(self, info_queue, card)
        local total_cards = G.deck and G.deck.cards and #G.deck.cards or 52
        local groups = math.floor(total_cards / card.ability.extra.cards_per_group)
        local current_mult = groups * card.ability.extra.mult_per_group
        return { vars = { card.ability.extra.mult_per_group, card.ability.extra.cards_per_group, current_mult, total_cards } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local total_cards = #G.deck.cards
            local groups = math.floor(total_cards / card.ability.extra.cards_per_group)
            local mult_bonus = groups * card.ability.extra.mult_per_group
            
            if mult_bonus > 0 then
                return {
                    mult = mult_bonus
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                {
                    ref_table = "card.joker_display_values",
                    ref_value = "mult",
                    retrigger_type = "mult"
                }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                local total_cards = G.deck and G.deck.cards and #G.deck.cards or 0
                local cards_per_group = tonumber(card.ability.extra.cards_per_group) or 1
                local mult_per_group = tonumber(card.ability.extra.mult_per_group) or 0
                card.joker_display_values.mult = math.floor(total_cards / cards_per_group) * mult_per_group
            end
        }
    end
}

return jokerInfo
