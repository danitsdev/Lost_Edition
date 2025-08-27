local jokerInfo = {
    key = "pot_of_greed",
    pos = LOSTEDMOD.funcs.coordinate(40),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    config = {
        extra = {
            cards_to_draw = 1,
            hand_size_gained = 0
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {card.ability.extra.cards_to_draw}
        }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint then
            local extra_cards = card.ability.extra.cards_to_draw

            G.hand:change_size(extra_cards)
            card.ability.extra.hand_size_gained = card.ability.extra.hand_size_gained + extra_cards
        end

        if context.discard and not context.blueprint and context.other_card == context.full_hand[#context.full_hand] then
            local extra_cards = card.ability.extra.cards_to_draw

            G.hand:change_size(extra_cards)
            card.ability.extra.hand_size_gained = card.ability.extra.hand_size_gained + extra_cards
        end

        if context.end_of_round and not context.blueprint then
            if card.ability.extra.hand_size_gained > 0 then
                G.hand:change_size(-card.ability.extra.hand_size_gained)
                card.ability.extra.hand_size_gained = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        -- Remove any extra hand size if the card is removed before end_of_round
        if card.ability.extra.hand_size_gained and card.ability.extra.hand_size_gained > 0 then
            G.hand:change_size(-card.ability.extra.hand_size_gained)
            card.ability.extra.hand_size_gained = 0
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 16 } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'ante_up' and args.ante >= 16
    end
}

return jokerInfo
