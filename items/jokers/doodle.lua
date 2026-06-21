local jokerInfo = {
    key = "doodle",
    pos = LOSTEDMOD.funcs.coordinate(65),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 8,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = false,
    config = { extra = { destroy_chance = 20 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.destroy_chance, 'losted_doodle_destroy')
        if card.area and card.area == G.jokers then
            local other_joker
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i - 1] end
            end
            local compatible = other_joker and other_joker ~= card and other_joker.config.center.blueprint_compat
            
            local vars = { numerator, denominator }
            local main_end = {
                {
                    n = G.UIT.C,
                    config = { align = "bm", minh = 0.4 },
                    nodes = {
                        {
                            n = G.UIT.C,
                            config = { 
                                ref_table = card, 
                                align = "m", 
                                colour = compatible and mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8) or mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8), 
                                r = 0.05, 
                                padding = 0.06 
                            },
                            nodes = {
                                { n = G.UIT.T, config = { text = ' ' .. localize('k_' .. (compatible and 'compatible' or 'incompatible')) .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.8 } },
                            }
                        }
                    }
                }
            }
            return { vars = vars, main_end = main_end }
        end
        return { vars = { numerator, denominator } }
    end,
    calculate = function(self, card, context)
        -- Safety check - only work during actual gameplay
        if not G.GAME or not G.jokers or not context then
            return nil
        end
        
        -- Copy the ability of the Joker to the left
        local other_joker = nil
        if G.jokers and G.jokers.cards then
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then 
                    other_joker = G.jokers.cards[i - 1]
                    break
                end
            end
        end
        
        -- Check for destruction chance at end of round
        if context.end_of_round and not context.repetition and not context.individual and not card.getting_sliced and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'doodle_destroy', 1, card.ability.extra.destroy_chance, 'losted_doodle_destroy') then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return {
                    message = localize('k_extinct_ex')
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        
        return SMODS.blueprint_effect(card, other_joker, context)
    end
}

return jokerInfo
