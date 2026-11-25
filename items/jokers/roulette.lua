local function rank_key_from_id(id)
    if not id then return nil end
    for key, rank in pairs(SMODS.Ranks) do
        if rank.id == id then return key end
    end
end

local jokerInfo = {
    key = "roulette",
    pos = LOSTEDMOD.funcs.coordinate(91),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = true,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        local target_id = G.playing_cards and LOSTEDMOD.funcs.get_most_common_rank()
        local rank_key = rank_key_from_id(target_id)
        return { vars = { rank_key and localize(rank_key, 'ranks') or localize('k_none') } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and context.full_hand then
            local target_id = LOSTEDMOD.funcs.get_most_common_rank(true)
            local target_key = rank_key_from_id(target_id)
            if not target_key then return end

            local candidates = {}
            for _, played_card in ipairs(context.full_hand) do
                if not SMODS.has_no_rank(played_card) and not played_card:losted_is_rank(target_id) then
                    candidates[#candidates + 1] = played_card
                end
            end
            if #candidates == 0 then return end

            local chosen = pseudorandom_element(candidates, pseudoseed('losted_roulette'))
            event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    if chosen and not chosen.REMOVED then
                        chosen:flip()
                        play_sound('card1')
                    end
                    return true
                end
            })
            event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    if chosen and not chosen.REMOVED then
                        SMODS.change_base(chosen, nil, target_key)
                        chosen:flip()
                        play_sound('tarot2', 1, 0.6)
                        chosen:juice_up(0.3, 0.3)
                    end
                    return true
                end
            })
            return {
                message = localize('k_losted_roulette'),
                colour = G.C.ATTENTION
            }
        end
    end,
}

return jokerInfo
