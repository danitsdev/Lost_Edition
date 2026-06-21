-- Geological tracking system for Obsidian unlock
local function mark_geological_joker_sold(joker_key)
        local geological_jokers = {
            'j_rough_gem',
            'j_bloodstone',
            'j_arrowhead', 
            'j_onyx_agate'
        }
        
        for _, tracked_joker in ipairs(geological_jokers) do
            if joker_key == tracked_joker then
                G.GAME.losted_geological_sold = G.GAME.losted_geological_sold or {}
                G.GAME.losted_geological_sold[joker_key] = true
                
                local sold_count = 0
                for _, joker_id in ipairs(geological_jokers) do
                    if G.GAME.losted_geological_sold[joker_id] then
                        sold_count = sold_count + 1
                    end
                end
                
                local progress_message = sold_count .. "/4"
                G.E_MANAGER:add_event(Event({
                    func = function()
                        attention_text({
                            text = progress_message,
                            scale = 1.4,
                            hold = 2.0,
                            major = G.play,
                            backdrop_colour = G.C.SECONDARY_SET.Spectral,
                            align = 'cm',
                            offset = {x = 0, y = -2.7},
                            silent = true
                        })
                        play_sound('generic1', 0.9, 0.8)
                        return true
                    end
                }))
                
                -- If all 4 are sold, give Obsidian
                if sold_count >= 4 then
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 2.5,
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 1.0,
                                func = function()
                                    if #G.jokers.cards < G.jokers.config.card_limit then
                                        play_sound('losted_obsidian', 2.0, 0.8)
                                        local obsidian_card = SMODS.add_card({
                                            set = 'Joker',
                                            area = G.jokers,
                                            key = 'j_losted_obsidian',
                                            bypass_discovery_center = true
                                        })
                                        if obsidian_card then
                                            obsidian_card:juice_up(0.3, 0.5)
                                        end
                                        
                                        attention_text({
                                            text = localize('k_obsidian_awakened_ex'),
                                            scale = 2.0,
                                            hold = 3.0,
                                            major = G.play,
                                            backdrop_colour = G.C.BLACK,
                                            align = 'cm',
                                            offset = {x = 0, y = -2.7},
                                            silent = false
                                        })
                                        
                                        play_sound('tarot1', 1.2, 0.6)
                                        play_sound('timpani', 1.0, 0.8)
                                        
                                        -- Reset tracking
                                        G.GAME.losted_geological_sold = {}
                                    else
                                        attention_text({
                                            text = "JOKER SLOTS FULL",
                                            scale = 1.6,
                                            hold = 2.0,
                                            major = G.play,
                                            backdrop_colour = G.C.RED,
                                            align = 'cm',
                                            offset = {x = 0, y = -2.7},
                                            silent = false
                                        })
                                    end
                                    return true
                                end
                            }))
                            return true
                        end
                    }))
                end
                
                return true
            end
        end
        return false
end

-- SMODS exposes sale events to mods, so this tracker does not need to wrap Card:sell_card.
SMODS.current_mod.calculate = function(self, context)
    if context.selling_card and context.card and context.card.config and context.card.config.center then
        mark_geological_joker_sold(context.card.config.center.key)
    end
end

-- Function to reset the obsidian card suit each round
local function reset_losted_obsidian_card()
    G.GAME.current_round.losted_obsidian_card = G.GAME.current_round.losted_obsidian_card or { suit = 'Spades' }
    local obsidian_suits = {}
    for k, v in ipairs({ 'Spades', 'Hearts', 'Clubs', 'Diamonds' }) do
        if v ~= G.GAME.current_round.losted_obsidian_card.suit then
            obsidian_suits[#obsidian_suits + 1] = v
        end
    end
    local obsidian_card = pseudorandom_element(obsidian_suits, pseudoseed('losted_obsidian' .. G.GAME.round_resets.ante))
    G.GAME.current_round.losted_obsidian_card.suit = obsidian_card
end

-- Register the reset function
LOSTEDMOD.funcs.reset_losted_obsidian_card = reset_losted_obsidian_card

local jokerInfo = {
    key = "obsidian",
    pos = LOSTEDMOD.funcs.coordinate(74),
    soul_pos = LOSTEDMOD.funcs.coordinate(84),
    atlas = 'losted_jokers',
    rarity = 4,
    cost = 20,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { chips = 80, mult = 10, xmult = 2, dollars = 2 } },
    loc_vars = function(self, info_queue, card)
        local suit = (G.GAME.current_round.losted_obsidian_card or {}).suit or 'Spades'
        return { 
            vars = { 
                card.ability.extra.chips, 
                card.ability.extra.mult, 
                card.ability.extra.xmult, 
                card.ability.extra.dollars,
                localize(suit, 'suits_singular'),
                colours = { G.C.SUITS[suit] }
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and 
           context.other_card:is_suit(G.GAME.current_round.losted_obsidian_card.suit) then
            G.GAME.dollar_buffer = to_number(G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
            return {
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                xmult = card.ability.extra.xmult,
                dollars = card.ability.extra.dollars,
                func = function()
                    event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    })
                end
            }
        end
    end,
    in_pool = function(self) 
        return false -- Never appears in shop, only from geological jokers
    end
}

return jokerInfo
