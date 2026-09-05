function LOSTEDMOD.funcs.invalidate_most_common_rank_cache()
    local current_round = G.GAME and G.GAME.current_round
    if not current_round then return end
    current_round.losted_most_common_rank = nil
    current_round.losted_most_common_rank_cached = nil
    current_round.losted_most_common_rank_hand = nil
end

function LOSTEDMOD.funcs.get_most_common_rank(refresh)
    local current_round = G.GAME and G.GAME.current_round
    if refresh and current_round and current_round.losted_most_common_rank_hand ~= nil and
        current_round.losted_most_common_rank_hand == current_round.hands_played then
        return current_round.losted_most_common_rank
    end
    if not refresh and current_round and current_round.losted_most_common_rank_cached then
        return current_round.losted_most_common_rank
    end

    local rank_counts = {}
    local highest_count = 0
    local most_common_rank = nil

    if G.playing_cards then
        for _, c in ipairs(G.playing_cards) do
            if c then
                local id = c:get_id()
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

    if current_round then
        current_round.losted_most_common_rank = most_common_rank
        current_round.losted_most_common_rank_cached = true
        if refresh then
            current_round.losted_most_common_rank_hand = current_round.hands_played
        end
    end
    return most_common_rank
end

if Card.set_base and not LOSTEDMOD.most_common_rank_set_base_wrapped then
    local set_base_ref = Card.set_base
    function Card:set_base(...)
        local old_rank = self.base and self.base.id
        local result = set_base_ref(self, ...)
        if self.playing_card and old_rank ~= (self.base and self.base.id) then
            LOSTEDMOD.funcs.invalidate_most_common_rank_cache()
        end
        return result
    end
    LOSTEDMOD.most_common_rank_set_base_wrapped = true
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
        local most_common_rank = LOSTEDMOD.funcs.get_most_common_rank()
        
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
            card.ability.extra.most_common_rank = LOSTEDMOD.funcs.get_most_common_rank(true)
        end

        if context.individual and context.cardarea == G.play and
           context.other_card then
            local most_common_rank = card.ability.extra.most_common_rank or
                LOSTEDMOD.funcs.get_most_common_rank()
            if not most_common_rank then return end
            local card_id = context.other_card:get_id()
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
