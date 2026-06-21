LOSTEDMOD.funcs = {
    -- ==== UTILITY FUNCTIONS ====
    
    coordinate = function(position)
        return { x = position % 10, y = math.floor(position / 10) }
    end,

    capture_highlighted_cards = function()
        local highlighted_cards = {}
        if not G.hand or not G.hand.highlighted then
            return highlighted_cards
        end

        for i = 1, #G.hand.highlighted do
            highlighted_cards[i] = G.hand.highlighted[i]
        end

        return highlighted_cards
    end,

    -- Boss Rush needs three generated bosses, but Cartomancer records every
    -- get_new_boss() call as if it had been played. Keep only the real Boss
    -- slot in that optional history while preserving three distinct choices.
    get_boss_rush_choices = function()
        local function get_side_boss_without_history()
            local history = G.GAME.cartomancer_bosses_list
            local previous_count = history and #history or 0
            local boss = get_new_boss()
            history = G.GAME.cartomancer_bosses_list
            if history then
                while #history > previous_count do
                    table.remove(history)
                end
            end
            return boss
        end

        return get_side_boss_without_history(),
            get_side_boss_without_history(),
            get_new_boss()
    end,

    pitch_between = function(index, count, min_pitch, max_pitch)
        if count <= 1 then
            return (min_pitch + max_pitch) / 2
        end

        return max_pitch - ((index - 1) / (count - 1)) * (max_pitch - min_pitch)
    end,

    is_adjacent_scoring_enhancement = function(card, scoring_hand, enhancement_key)
        if not card or card.debuff or not scoring_hand then return false end
        for index, scoring_card in ipairs(scoring_hand) do
            if scoring_card == card then
                local previous_card = scoring_hand[index - 1]
                local next_card = scoring_hand[index + 1]
                return (previous_card and not previous_card.debuff
                        and SMODS.has_enhancement(previous_card, enhancement_key))
                    or (next_card and not next_card.debuff
                        and SMODS.has_enhancement(next_card, enhancement_key))
                    or false
            end
        end
        return false
    end,
    
    -- ==== CARD MANIPULATION ====
    
    -- Remove a joker card with animation
    destroy_joker = function(card, after)
        if not card or card.removed then return {} end
        play_sound('tarot1', 1.0, 0.8)
        local queued = SMODS.destroy_cards(card, {
            bypass_eternal = true,
            pinch_anim = true,
        }) or {}
        if #queued > 0 and type(after) == 'function' then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                blockable = false,
                func = function()
                    after()
                    return true
                end,
            }))
        end
        return queued
    end,

    -- Remove multiple cards with animation
    destroy_cards = function(cards, callback)
        if not cards or #cards == 0 then return {} end
        play_sound('tarot1', 1.0, 0.8)
        local queued = SMODS.destroy_cards(cards, {
            bypass_eternal = true,
            pinch_anim = true,
        }) or {}

        if #queued > 0 and type(callback) == 'function' then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                blockable = false,
                func = function()
                    callback()
                    return true
                end
            }))
        end
        return queued
    end,

    -- Create a joker and add to deck
    create_joker_in_deck = function(joker_key)
        return SMODS.add_card({
            set = 'Joker',
            area = G.jokers,
            key = joker_key,
            bypass_discovery_center = true
        })
    end,

    -- ==== IMPORTED FUNCTIONS FROM BUNCO MOD ====
    
    event = function(config)
        local e = Event(config)
        G.E_MANAGER:add_event(e)
        return e
    end,    
    
    big_juice = function(card)
        card:juice_up(0.7)
    end,

    forced_message = function(message, card, color, delay, juice)
        if delay == true then
            delay = 0.7 * 1.25
        elseif delay == nil then
            delay = 0
        end

        LOSTEDMOD.funcs.event({trigger = 'before', delay = delay, func = function()
            if juice then LOSTEDMOD.funcs.big_juice(juice) end
            card_eval_status_text(
                card,
                'extra',
                nil, nil, nil,
                {message = message, colour = color, instant = true}
            )
            return true
        end})
    end,

}

-- Make Bunco functions globally available
_G.event = LOSTEDMOD.funcs.event
_G.big_juice = LOSTEDMOD.funcs.big_juice
