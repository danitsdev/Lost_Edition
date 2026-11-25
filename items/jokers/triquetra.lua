local jokerInfo = {
    key = "triquetra",
    pos = LOSTEDMOD.funcs.coordinate(8),
    pixel_size = { h = 95 / 1.2 },
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    config = { extra = { repetitions = 2 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "perfect_three_of_a_kind", set = "Other"}
        return { vars = { card.ability.extra.repetitions } } 
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.other_card then
            if context.full_hand then
                local rank_count = 0
                
                local target_id = context.other_card:get_id()
                for _, hand_card in ipairs(context.full_hand) do
                    if hand_card:losted_is_rank(target_id) then
                        rank_count = rank_count + 1
                    end
                end
                
                if rank_count == 3 then
                    return { repetitions = card.ability.extra.repetitions }
                end
            end
        end
        if context.before and context.main_eval and not context.blueprint and context.scoring_name == 'Three of a Kind' then
            return { message = localize('k_active_ex'), colour = G.C.MULT }
        end
    end
}

return jokerInfo
