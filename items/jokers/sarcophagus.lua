LOSTEDMOD.funcs.reset_losted_sarcophagus = function()
    G.GAME.round_resets.sarcophagus_activated = 0
end
local jokerInfo = {
    key = "sarcophagus",
    pos = LOSTEDMOD.funcs.coordinate(38),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    eternal_compat = false,
    config = {
        extra = {}
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return {
            vars = {}
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and G.GAME.blind.boss and not context.blueprint then
            event({
                func = function()
                    G.GAME.round_resets.sarcophagus_activated = (G.GAME.round_resets.sarcophagus_activated or 0) + 1
                    local rarity_pool = {'Uncommon', 'Rare'}
                    local chosen_rarity = pseudorandom_element(rarity_pool, pseudoseed('sarcophagus_rarity'))

                    local new_joker = SMODS.add_card({
                        set = 'Joker',
                        area = G.jokers,
                        rarity = chosen_rarity
                    })
                    new_joker:set_edition({
                        negative = true
                    })
                    big_juice(card)

                    LOSTEDMOD.funcs.destroy_joker(card)

                    return true
                end
            })
            return {
                message = localize('k_plus_joker'),
                colour = G.C.DARK_EDITION
            }
        end
    end,
    -- The idea is to decrease the chance each time you get caught, it's not the best solution to decrease your strength but a good try lol
    in_pool = function(self, args)
        local times_activated = G.GAME.round_resets.sarcophagus_activated or 0
        if times_activated == 0 then
            return true 
        else
            return pseudorandom('losted_sarcophagus_pool_' .. tostring(times_activated)) < (1 / (2 ^ times_activated))
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win' and G.GAME.blind.boss then
            if not G.jokers or not G.jokers.cards then
                return false
            end
            
            local negative_jokers = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker.edition and joker.edition.negative then
                    negative_jokers = negative_jokers + 1
                end
            end
            return negative_jokers >= 2
        end
        return false
    end
}

return jokerInfo
