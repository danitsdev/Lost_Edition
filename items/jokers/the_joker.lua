local function get_most_common_rank()
    local rank_counts = {}
    local highest_count = 0
    local most_common_rank = nil

    if G.playing_cards then
        for _, c in ipairs(G.playing_cards) do
            if c and not c.debuff then
                local id = nil
                pcall(function() id = c:get_id() end)

                if id then
                    rank_counts[id] = (rank_counts[id] or 0) + 1
                    if rank_counts[id] > highest_count then
                        highest_count = rank_counts[id]
                        most_common_rank = id
                    end
                end
            end
        end
    end

    return most_common_rank
end

local jokerInfo = {
    key = "the_joker",
    pos = LOSTEDMOD.funcs.coordinate(75),
    soul_pos = LOSTEDMOD.funcs.coordinate(85),
    atlas = 'losted_jokers',
    rarity = 4,
    cost = 20,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { xmult = 2.5, most_common_rank = nil } },
    loc_vars = function(self, info_queue, card)
        local most_common_rank = get_most_common_rank()
        
        local rank_name = "Ace"
        if most_common_rank == 14 then
            rank_name = "Ace" 
        elseif most_common_rank == 13 then
            rank_name = "King"
        elseif most_common_rank == 12 then
            rank_name = "Queen"
        elseif most_common_rank == 11 then
            rank_name = "Jack"
        elseif most_common_rank then
            rank_name = tostring(most_common_rank)
        end
        
        return { 
            vars = { 
                card.ability.extra.xmult,
                localize(rank_name, 'ranks') or rank_name or 'Ace',
            }
        }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint then
            card.ability.extra.most_common_rank = get_most_common_rank()
        end

        if context.individual and context.cardarea == G.play and
           context.other_card then
            local most_common_rank = card.ability.extra.most_common_rank or get_most_common_rank()
            if not most_common_rank then return end
            local card_id = nil
            pcall(function() card_id = context.other_card:get_id() end)

            if card_id and card_id == most_common_rank then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    in_pool = function(self) 
        return false
    end
}

return jokerInfo
