local jokerInfo = {
    key = "turntable",
    pos = LOSTEDMOD.funcs.coordinate(69),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = {
        extra = {
            card_list = {},
            mult = 15
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.losted_quantum_copy then
            card.losted_turntable_quantum_learned = {}
        end

        if context.individual and context.cardarea == G.play then
            for _, v in ipairs(card.ability.extra.card_list) do
                if (v.rank and v.rank == context.other_card:get_id())
                and (v.has_any_suit or context.other_card:is_suit(v.suit) or context.other_card.config.center == G.P_CENTERS.m_wild)
                and context.other_card.config.center ~= G.P_CENTERS.m_stone
                and not (context.losted_quantum_copy and
                    card.losted_turntable_quantum_learned and
                    card.losted_turntable_quantum_learned[v.ID]) then
                    if not context.blueprint and not context.before then
                        play_sound('losted_turntable', 1, 0.6)
                    end
                    return {
                        mult = card.ability.extra.mult,
                        card = card,
                    }
                end
            end

            if not context.blueprint and not context.losted_quantum_copy then
                if context.other_card.config.center ~= G.P_CENTERS.m_stone then
                    if not (SMODS.has_no_suit(context.other_card) or SMODS.has_no_rank(context.other_card)) then
                        table.insert(card.ability.extra.card_list, {
                            rank = context.other_card:get_id(),
                            suit = context.other_card.base.suit,
                            has_any_suit = SMODS.has_any_suit(context.other_card),
                            ID = context.other_card.unique_val
                        })
                        card.losted_turntable_quantum_learned = card.losted_turntable_quantum_learned or {}
                        card.losted_turntable_quantum_learned[context.other_card.unique_val] = true
                    end
                end
            end
        end

        if context.after and context.main_eval then
            card.losted_turntable_quantum_learned = nil
        end

        if context.end_of_round and not context.other_card then -- Clear the list if end of round
            card.ability.extra.card_list = {}
            card.losted_turntable_quantum_learned = nil
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local eval = evaluate_poker_hand(args.cards)
            if next(eval['Flush Five']) then
                unlock_card(self)
            end
        end
    end,
}

return jokerInfo
