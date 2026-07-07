local jokerInfo = {
    key = "contract",
    pos = LOSTEDMOD.funcs.coordinate(57),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
    eternal_compat = true, -- is always eternal
    perishable_compat = false,
    config = {
        extra = {
            contracted_hand = nil,
            purchase_round = 0,
            rounds_remaining = 15
        }
    },
    loc_vars = function(self, info_queue, card)
        local contracted_hand = card.ability.extra.contracted_hand
        if not contracted_hand then
            local most_played_hand = "High Card"
            local highest_count = 0
            for k, v in pairs(G.GAME.hands) do
                if v.visible and v.played > highest_count then
                    highest_count = v.played
                    most_played_hand = k
                end
            end
            contracted_hand = most_played_hand
        end
        return {
            vars = {localize(contracted_hand, 'poker_hands'), card.ability.extra.rounds_remaining}
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.ability.extra.contracted_hand then
            local most_played_hand = "High Card"
            local highest_count = 0
            for k, v in pairs(G.GAME.hands) do
                if v.visible and v.played > highest_count then
                    highest_count = v.played
                    most_played_hand = k
                end
            end
            card.ability.extra.contracted_hand = most_played_hand
        end
        if not card.ability.extra.rounds_remaining or card.ability.extra.rounds_remaining <= 0 then
            card.ability.extra.rounds_remaining = 15
        end
        if card.set_eternal then card:set_eternal(true) else card.ability.eternal = true end
    end,
    calculate = function(self, card, context)
        if context.debuff_hand and not context.blueprint then
            local contracted_hand = card.ability.extra.contracted_hand
            if contracted_hand and context.scoring_name ~= contracted_hand then
                return { debuff = true }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            local contracted_hand = card.ability.extra.contracted_hand
            if contracted_hand then
                SMODS.smart_level_up_hand(card, contracted_hand, false, 2)
            end
            if not LOSTEDMOD.funcs.should_count_quantum_progress(context) then
                return nil
            end
            card.ability.extra.rounds_remaining = card.ability.extra.rounds_remaining - 1
            if card.ability.extra.rounds_remaining <= 0 then
                LOSTEDMOD.funcs.destroy_joker(card)
                return {
                    message = localize('k_extinct_ex'),
                    colour = G.C.RED
                }
            end
        end
        return nil
    end
}

return jokerInfo
