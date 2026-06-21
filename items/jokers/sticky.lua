LOSTEDMOD.funcs.reset_losted_sticky = function()
    G.GAME.round_resets.sticky_activated = 0
end

local jokerInfo = {
    key = "sticky",
    pos = LOSTEDMOD.funcs.coordinate(5),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    eternal_compat = false,
    config = { extra = { invis_rounds = 0, total_rounds = 3, unlock_req = 8 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return { vars = { card.ability.extra.total_rounds, card.ability.extra.invis_rounds } }
    end,
    calculate = function(self, card, context)
        if context.selling_self and (card.ability.extra.invis_rounds >= card.ability.extra.total_rounds) and not context.blueprint then
            G.GAME.round_resets.sticky_activated = (G.GAME.round_resets.sticky_activated or 0) + 1
            local editionless_jokers = {}
            for _, j in ipairs(G.jokers.cards) do
                if j ~= card and not j.edition then 
                    table.insert(editionless_jokers, j) 
                end
            end
            if #editionless_jokers > 0 then
                local chosen_joker = pseudorandom_element(editionless_jokers, pseudoseed('losted_sticky'))
                event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        if not chosen_joker or chosen_joker.REMOVED then
                            return true
                        end
                        chosen_joker:set_edition({ negative = true })
                        big_juice(card)
                        big_juice(chosen_joker) 
                        return true
                    end
                })
                return {
                    message = localize('k_negative_ex'),
                    colour = G.C.DARK_EDITION
                }
            else
                return { message = localize('k_no_eligible_jokers_ex') }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.invis_rounds = card.ability.extra.invis_rounds + 1
            if card.ability.extra.invis_rounds == card.ability.extra.total_rounds then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
            end
            return {
                message = (card.ability.extra.invis_rounds < card.ability.extra.total_rounds)
                    and (card.ability.extra.invis_rounds .. '/' .. card.ability.extra.total_rounds)
                    or localize('k_active_ex'),
                colour = G.C.FILTER
            }
        end
    end,
    -- The idea is to decrease the chance each time you get caught, it's not the best solution to decrease your strength but a good try lol
    in_pool = function(self, args)
        local times_activated = G.GAME.round_resets.sticky_activated or 0
        if times_activated == 0 then
            return true 
        else
            return pseudorandom('losted_sticky_pool_' .. tostring(times_activated)) < (1 / (2 ^ times_activated))
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win' then
            if G.jokers and #G.jokers.cards >= self.config.extra.unlock_req then
                unlock_card(self)
            end
        end
    end
}

return jokerInfo
