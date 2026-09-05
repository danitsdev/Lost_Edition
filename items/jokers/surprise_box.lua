local jokerInfo = {
    key = "surprise_box",
    pos = LOSTEDMOD.funcs.coordinate(61), 
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = true,
    config = { 
        extra = {
            chips_min = 20,
            chips_max = 100,
            mult_min = 5,
            mult_max = 20,
            dollars_min = 2,
            dollars_max = 6,
            xmult_min = 11,
            xmult_max = 17
        } 
    },

    loc_vars = function(self, info_queue, card)
        local r_chips = {}
        for i = card.ability.extra.chips_min, card.ability.extra.chips_max do
            r_chips[#r_chips + 1] = tostring(i)
        end
        
        local r_mult = {}
        for i = card.ability.extra.mult_min, card.ability.extra.mult_max do
            r_mult[#r_mult + 1] = tostring(i)
        end
        
        local r_xmult = {}
        for i = card.ability.extra.xmult_min, card.ability.extra.xmult_max do
            r_xmult[#r_xmult + 1] = string.format("%.1f", i / 10)
        end
        
        local r_dollars = {}
        for i = card.ability.extra.dollars_min, card.ability.extra.dollars_max do
            r_dollars[#r_dollars + 1] = tostring(i)
        end
        
        -- Format prefix symbols with proper colors
        local prefixes = {
            { string = '+', colour = G.C.CHIPS },   -- For Chips
            { string = '+', colour = G.C.MULT },    -- For Mult
            { string = 'X', colour = G.C.MULT },    -- For XMult
            { string = '$', colour = G.C.MONEY },   -- For Dollars
            { string = '@#', colour = G.C.PURPLE }  -- For Glitch
        }
        
        -- Get localized text for each reward type
        local loc_chips = localize('k_chips')
        local loc_mult = localize('k_mult')
        local loc_xmult = localize('k_xmult')
        local loc_dollars = '$'
        local loc_glitch = '???'
        
        -- Build the dynamic text display
        local main_start = {
            -- First part: Rotating prefix symbols (+, X, $, @#)
            { n = G.UIT.O, config = { object = DynaText({ 
                string = prefixes, 
                pop_in_rate = 9999999, 
                silent = true, 
                random_element = true, 
                scale = 0.35, 
                min_cycle_time = 0 
            }) } },
            
            -- Second part: Rotating values based on reward type
            { n = G.UIT.O, config = { object = DynaText({ 
                string = { unpack(r_chips), unpack(r_mult), unpack(r_xmult), unpack(r_dollars), '??' }, 
                colours = { G.C.RED }, 
                pop_in_rate = 9999999, 
                silent = true, 
                random_element = true, 
                pop_delay = 0.5, 
                scale = 0.35, 
                min_cycle_time = 0 
            }) } },
            
            { n = G.UIT.O, config = { object = DynaText({
                string = {
                    { string = 'rand()', colour = G.C.JOKER_GREY },
                    { string = loc_chips, colour = G.C.CHIPS },
                    { string = loc_mult, colour = G.C.MULT },
                    { string = loc_xmult, colour = G.C.XMULT or G.C.MULT },
                    { string = loc_dollars, colour = G.C.MONEY },
                    { string = loc_glitch, colour = G.C.PURPLE },
                },
                pop_in_rate = 9999999,
                silent = true,
                random_element = true,
                pop_delay = 0.2,
                scale = 0.35,
                min_cycle_time = 0
            }) } },
        }
        
        return { main_start = main_start }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local loot_table = {'chips', 'mult', 'xmult', 'dollars', 'glitch'}
            local chosen_reward = pseudorandom_element(loot_table, 'losted_surprise_box_reward')

            if chosen_reward == 'chips' then
                return {
                    chips = pseudorandom('surprise_box_chips', card.ability.extra.chips_min, card.ability.extra.chips_max)
                }
            elseif chosen_reward == 'mult' then
                return {
                    mult = pseudorandom('surprise_box_mult', card.ability.extra.mult_min, card.ability.extra.mult_max)
                }
            elseif chosen_reward == 'xmult' then
                local xmult_int = pseudorandom('surprise_box_xmult', card.ability.extra.xmult_min, card.ability.extra.xmult_max)
                return {
                    xmult = xmult_int / 10
                }
            elseif chosen_reward == 'dollars' then
                local amount = pseudorandom('surprise_box_dollars', card.ability.extra.dollars_min, card.ability.extra.dollars_max)
                ease_dollars(amount)
                return {
                    message = localize('$') .. amount,
                    colour = G.C.MONEY
                }
            elseif chosen_reward == 'glitch' then
                play_sound('losted_risadinha', 1.0, 0.7)
            end
        end
    end
}

return jokerInfo
