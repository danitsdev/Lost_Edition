if not JokerDisplay then return end
if not JokerDisplay.Definitions then return end

local jd_def = JokerDisplay.Definitions

-- JokerDisplay 1.10.x counts retriggers supplied by Jokers, but not by custom
-- editions. Chain its public helper so every displayed value affected by the
-- full Quantum retrigger matches gameplay.
if JokerDisplay.calculate_joker_triggers and not JokerDisplay.losted_quantum_compat then
    local calculate_joker_triggers_ref = JokerDisplay.calculate_joker_triggers
    JokerDisplay.calculate_joker_triggers = function(card)
        local triggers = calculate_joker_triggers_ref(card)
        if triggers > 0 and card and not card.debuff and card.edition and
            card.edition.losted_quantum and LOSTEDMOD.funcs.can_receive_quantum(card) then
            triggers = triggers + (card.edition.extra and card.edition.extra.retriggers or 1)
        end
        return triggers
    end
    JokerDisplay.losted_quantum_compat = true
end

-- =========================================================================
--  +CHIPS  (static)
-- =========================================================================

jd_def["j_losted_harlequin"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS }
}

jd_def["j_losted_piggy_bank"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS }
}

jd_def["j_losted_booster"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS }
}

-- =========================================================================
--  +MULT  (dynamic)
-- =========================================================================

jd_def["j_losted_red_joker"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local total = G.deck and G.deck.cards and #G.deck.cards or 0
        local per = tonumber(card.ability.extra.cards_per_group) or 5
        card.joker_display_values.mult = math.floor(total / per) * (tonumber(card.ability.extra.mult_per_group) or 2)
    end
}

-- =========================================================================
--  +MULT  (static)
-- =========================================================================

jd_def["j_losted_big_joker"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_hematophilia"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_precious"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_step_by_step"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_shiny_gloves"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_silly_hat"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

jd_def["j_losted_lost_sock"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT }
}

-- =========================================================================
--  +CHIPS +MULT  (static dual)
-- =========================================================================

jd_def["j_losted_jimball"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS, retrigger_type = "mult" },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.ability.extra", ref_value = "mult",  colour = G.C.MULT,  retrigger_type = "mult" }
    }
}

-- =========================================================================
--  XCHIPS  (static)
-- =========================================================================

jd_def["j_losted_strawberry_milkshake"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xchips", retrigger_type = "exp" }
            },
            border_colour = G.C.CHIPS
        }
    }
}

jd_def["j_losted_passion_juice"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xchips", retrigger_type = "exp" }
            },
            border_colour = G.C.CHIPS
        }
    }
}

-- =========================================================================
--  XMULT  (static)
-- =========================================================================

jd_def["j_losted_stake_out"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    }
}

jd_def["j_losted_fair_price"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "($5/round)" }
    }
}

jd_def["j_losted_limited_edition"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    }
}

-- =========================================================================
--  XMULT  (dynamic)
-- =========================================================================

jd_def["j_losted_disruption"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        local hand_name = JokerDisplay.evaluate_hand()
        local played = hand_name ~= 'Unknown' and G.GAME.hands[hand_name] and G.GAME.hands[hand_name].played or 0
        card.joker_display_values.xmult = 1 + played * (card.ability.extra.xmult_gain or 0.1)
    end
}

jd_def["j_losted_bank"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        local dollars = to_number((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0))
        local per = tonumber(card.ability.extra.dollars_per_group) or 10
        local gain = tonumber(card.ability.extra.xmult_per_group) or 0.25
        card.joker_display_values.xmult = 1 + math.floor(dollars / per) * gain
    end
}

jd_def["j_losted_spirit_box"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        local count = G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.spectral or 0
        card.joker_display_values.xmult = 1 + (card.ability.extra.xmult_per_spectral or 0.5) * count
    end
}

jd_def["j_losted_joke_book"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "hand_name", colour = G.C.ORANGE },
        { text = ")" }
    },
    calc_function = function(card)
        card.joker_display_values.hand_name = localize(card.ability.extra.poker_hand or 'High Card', 'poker_hands')
    end
}

-- =========================================================================
--  PER-CARD: Suit-based +mult
-- =========================================================================

jd_def["j_losted_moist_cake"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
        { text = ")" }
    },
    calc_function = function(card)
        local suit = (G.GAME.current_round.losted_moist_cake or {}).suit or 'Spades'
        local mult = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit(suit) then
                    mult = mult + (card.ability.extra.mult or 8) *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = localize(suit, 'suits_plural')
    end,
    style_function = function(card, text, reminder_text, extra)
        local suit = (G.GAME.current_round.losted_moist_cake or {}).suit or 'Spades'
        local suit_node = reminder_text and reminder_text.children and reminder_text.children[2]
        if suit_node then suit_node.config.colour = G.C.SUITS[suit] and lighten(G.C.SUITS[suit], 0.35) or G.C.UI.TEXT_INACTIVE end
    end
}

-- =========================================================================
--  PER-CARD: Enhancement-based +mult
-- =========================================================================

jd_def["j_losted_rocker"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(Stone Cards)" }
    },
    calc_function = function(card)
        local mult = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if SMODS.has_enhancement(scoring_card, 'm_stone') then
                    mult = mult + card.ability.extra.mult *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
    end
}

jd_def["j_losted_gothic"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    reminder_text = {
        { text = "(Wild Cards)" }
    },
    calc_function = function(card)
        local mult = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if SMODS.has_enhancement(scoring_card, 'm_wild') then
                    mult = mult + card.ability.extra.mult *
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.mult = mult
    end
}

-- =========================================================================
--  PER-CARD: Rank-based
-- =========================================================================

jd_def["j_losted_rubiks_cube"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS, retrigger_type = "mult" },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT,  retrigger_type = "mult" }
    },
    reminder_text = {
        { text = "(9s, 6s)" }
    },
    calc_function = function(card)
        local chips, mult = 0, 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                local id = scoring_card:get_id()
                local triggers = JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                if id == 9 then chips = chips + (card.ability.extra.chips_nine or 60) * triggers end
                if id == 6 then mult = mult + (card.ability.extra.mult_six or 9) * triggers end
            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.mult = mult
    end
}

jd_def["j_losted_rule_book"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(Last scoring card)" }
    },
    calc_function = function(card)
        local xmult = 1
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' and #scoring_hand > 0 then
            local last = scoring_hand[#scoring_hand]
            if last then
                local triggers = JokerDisplay.calculate_card_triggers(last, scoring_hand)
                xmult = (card.ability.extra.xmult or 1.5) ^ triggers
            end
        end
        card.joker_display_values.xmult = xmult
    end
}

jd_def["j_losted_the_joker"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "rank_text", colour = G.C.ORANGE },
        { text = ")" }
    },
    calc_function = function(card)
        local best = LOSTEDMOD.funcs.get_most_common_rank()
        local name = "Ace"
        if best == 14 then name = "Ace"
        elseif best == 13 then name = "King"
        elseif best == 12 then name = "Queen"
        elseif best == 11 then name = "Jack"
        elseif best then name = tostring(best) end
        card.joker_display_values.rank_text = localize(name, 'ranks') or name
        local xmult = 1
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' and best then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == best then
                    xmult = xmult * ((card.ability.extra.xmult or 2.5) ^
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand))
                end
            end
        end
        card.joker_display_values.xmult = xmult
    end
}

jd_def["j_losted_obsidian"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS, retrigger_type = "mult" },
        { text = " +",                             colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT,  retrigger_type = "mult" },
        { text = " +$",                            colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "dollars", colour = G.C.GOLD, retrigger_type = "mult" }
    },
    extra = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
        { text = ")" }
    },
    calc_function = function(card)
        local suit = (G.GAME.current_round.losted_obsidian_card or {}).suit or 'Spades'
        card.joker_display_values.localized_text = localize(suit, 'suits_singular')
        local chips, mult, dollars, xmult = 0, 0, 0, 1
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_suit(suit) then
                    local triggers = JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    chips = chips + (card.ability.extra.chips or 80) * triggers
                    mult = mult + (card.ability.extra.mult or 10) * triggers
                    dollars = dollars + (card.ability.extra.dollars or 2) * triggers
                    xmult = xmult * ((card.ability.extra.xmult or 2) ^ triggers)
                end
            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.mult = mult
        card.joker_display_values.dollars = dollars
        card.joker_display_values.xmult = xmult
    end,
    style_function = function(card, text, reminder_text, extra)
        local suit = (G.GAME.current_round.losted_obsidian_card or {}).suit or 'Spades'
        local suit_node = reminder_text and reminder_text.children and reminder_text.children[2]
        if suit_node then suit_node.config.colour = G.C.SUITS[suit] and lighten(G.C.SUITS[suit], 0.35) or G.C.UI.TEXT_INACTIVE end
    end
}

jd_def["j_losted_statue"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xchips", retrigger_type = "exp" }
            },
            border_colour = G.C.CHIPS
        }
    },
    reminder_text = {
        { text = "(Stone Cards)" }
    },
    calc_function = function(card)
        local xchips = 1
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card.config.center == G.P_CENTERS.m_stone then
                    xchips = xchips * ((card.ability.extra.xchips or 1.5) ^
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand))
                end
            end
        end
        card.joker_display_values.xchips = xchips
    end
}

jd_def["j_losted_slot_machine"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.ORANGE },
    reminder_text = {
        { text = "(7s)" }
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() and scoring_card:get_id() == 7 then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.count = count
    end
}

jd_def["j_losted_demonic_joker"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.joker_display_values", ref_value = "dollars", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.GOLD },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" }
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count, dollars = 0, 0
        local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() and scoring_card:get_id() == 6 then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
            local multiplier = poker_hands and poker_hands['Three of a Kind'] and
                next(poker_hands['Three of a Kind']) and (card.ability.extra.gold_multiplier or 2) or 1
            dollars = count * (card.ability.extra.gold_per_six or 2) * multiplier
        end
        card.joker_display_values.dollars = dollars
        local num, den = (G.GAME.probabilities.normal or 1), card.ability.extra.odds
        if SMODS then num, den = SMODS.get_probability_vars(card, 1, den, 'losted_demonic') end
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, den } }
    end
}

-- =========================================================================
--  PER-CARD: Even/Odd (mode-switch)
-- =========================================================================

jd_def["j_losted_patati_patata"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "amount", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
        { text = ")" }
    },
    calc_function = function(card)
        local mode = card.ability.extra.mode or "PATATA"
        local amount = 1
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                local id = nil
                pcall(function() id = scoring_card:get_id() end)
                if id then
                    if mode == "PATATA" and id <= 10 and id >= 2 and id % 2 == 0 then
                        amount = amount * ((card.ability.extra.xmult or 2) ^
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand))
                    elseif mode == "PATATI" and ((id >= 3 and id <= 9 and id % 2 == 1) or id == 14) then
                        amount = amount * ((card.ability.extra.xchips or 2) ^
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand))
                    end
                end
            end
        end
        card.joker_display_values.amount = amount
        if mode == "PATATA" then
            card.joker_display_values.localized_text = "10,8,6,4,2"
        else
            card.joker_display_values.localized_text = "A,9,7,5,3"
        end
    end,
    style_function = function(card, text)
        local border = text and text.children and text.children[1]
        if border then
            border.config.colour = card.ability.extra.mode == "PATATI" and G.C.CHIPS or G.C.XMULT
        end
    end
}

-- =========================================================================
--  RETRIGGER JOKERS
-- =========================================================================

jd_def["j_losted_replay"] = {
    reminder_text = {
        { text = "(Last scoring card)" }
    },
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then return 0 end
        if scoring_hand and #scoring_hand > 0 and playing_card == scoring_hand[#scoring_hand] then
            return joker_card.ability.extra.repetitions * JokerDisplay.calculate_joker_triggers(joker_card)
        end
        return 0
    end
}

-- =========================================================================
--  PASSIVE / SCALING (with odds)
-- =========================================================================

jd_def["j_losted_schrodinger"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" }
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.chips = card.ability.extra.chips or 150
        local num, den = (G.GAME.probabilities.normal or 1), card.ability.extra.odds
        if SMODS then num, den = SMODS.get_probability_vars(card, 1, den, 'losted_schrodinger') end
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, den } }
    end
}

jd_def["j_losted_passion_fruit"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" }
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local num, den = (G.GAME.probabilities.normal or 1), card.ability.extra.odds
        if SMODS then num, den = SMODS.get_probability_vars(card, 1, den, 'losted_passion_fruit') end
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, den } }
    end
}

-- =========================================================================
--  ECONOMY
-- =========================================================================

jd_def["j_losted_toc_toc"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.joker_display_values", ref_value = "dollars" }
    },
    text_config = { colour = G.C.GOLD },
    reminder_text = {
        { text = "(Discards left)" }
    },
    calc_function = function(card)
        card.joker_display_values.dollars = G.GAME.current_round.discards_left or 0
    end
}

jd_def["j_losted_paid_vacation"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.ability.extra", ref_value = "money" }
    },
    text_config = { colour = G.C.GOLD },
    reminder_text = {
        { text = "(0 hands remaining)" }
    }
}

-- =========================================================================
--  CONDITIONAL XMULT
-- =========================================================================

jd_def["j_losted_cosmos"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(Planet cards)" }
    },
    calc_function = function(card)
        local count = 0
        for _, consumable in ipairs((G.consumeables and G.consumeables.cards) or {}) do
            if consumable.ability and consumable.ability.set == "Planet" then
                count = count + 1
            end
        end
        card.joker_display_values.xmult = (card.ability.extra.xmult or 1.5) ^ count
    end
}

-- =========================================================================
--  MODE / TOGGLE
-- =========================================================================

jd_def["j_losted_jimboy"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "amount", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "mode_text", colour = G.C.ORANGE },
        { text = ")" }
    },
    calc_function = function(card)
        if card.ability.extra.mode == 'C' then
            card.joker_display_values.amount = card.ability.extra.chips
            card.joker_display_values.mode_text = localize('k_chips')
        else
            card.joker_display_values.amount = card.ability.extra.mult
            card.joker_display_values.mode_text = localize('k_mult')
        end
    end,
    style_function = function(card, text, reminder_text, extra)
        if text and text.children[2] then
            text.children[2].config.colour = card.ability.extra.mode == 'C' and G.C.CHIPS or G.C.MULT
        end
        return false
    end
}

-- =========================================================================
--  COUNTER / PROGRESS
-- =========================================================================

jd_def["j_losted_mysterious"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "progress" }
    },
    text_config = { colour = G.C.SECONDARY_SET.Tarot },
    calc_function = function(card)
        local completed = 0
        for _, played in pairs(card.ability.extra.played_hands) do
            if played then completed = completed + 1 end
        end
        card.joker_display_values.progress = completed .. "/9"
    end
}

jd_def["j_losted_contract"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "hand_name", colour = G.C.ORANGE },
        { text = ", " },
        { ref_table = "card.ability.extra", ref_value = "rounds_remaining", colour = G.C.SECONDARY_SET.Tarot },
        { text = " " },
        { ref_table = "card.joker_display_values", ref_value = "round_text" },
        { text = ")" }
    },
    calc_function = function(card)
        local hand = card.ability.extra.contracted_hand
        if not hand then
            local best, best_count = "High Card", 0
            for k, v in pairs(G.GAME.hands) do
                if v.visible and v.played > best_count then best_count = v.played; best = k end
            end
            hand = best
        end
        card.joker_display_values.hand_name = localize(hand, 'poker_hands')
        card.joker_display_values.round_text = localize('k_round')
    end
}

jd_def["j_losted_sticky"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "countdown" },
        { text = ")" }
    },
    calc_function = function(card)
        local cur = card.ability.extra.invis_rounds or 0
        local max = card.ability.extra.total_rounds or 3
        card.joker_display_values.countdown = cur .. "/" .. max
    end
}

jd_def["j_losted_clown_car"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "countdown" },
        { text = ")" }
    },
    calc_function = function(card)
        local cur = card.ability.extra.totalJCreates or 0
        local max = card.ability.extra.maxJCreates or 5
        card.joker_display_values.countdown = cur .. "/" .. max
    end
}

jd_def["j_losted_chicken_cleide"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "countdown" },
        { text = ")" }
    },
    calc_function = function(card)
        local cur = card.ability.extra.eggs_created or 0
        local max = card.ability.extra.max_eggs or 3
        card.joker_display_values.countdown = cur .. "/" .. max
    end
}

-- =========================================================================
--  RANDOM (dynatext)
-- =========================================================================

jd_def["j_losted_surprise_box"] = {
    text = {
        { text = "+", colour = G.C.CHIPS },
        {
            dynatext = {
                string = (function()
                    local r = {}
                    for i = 20, 100 do r[#r + 1] = tostring(i) end
                    for i = 5, 20 do r[#r + 1] = tostring(i) end
                    for i = 11, 17 do r[#r + 1] = string.format("X%.1f", i / 10) end
                    for i = 2, 6 do r[#r + 1] = "$" .. tostring(i) end
                    r[#r + 1] = "???"
                    return r
                end)(),
                colours = { G.C.CHIPS, G.C.MULT, G.C.MULT, G.C.GOLD, G.C.PURPLE },
                pop_in_rate = 9999999,
                silent = true,
                random_element = true,
                pop_delay = 0.5,
                scale = 0.4,
                min_cycle_time = 0
            }
        }
    }
}

-- =========================================================================
--  PER-CARD: Memory-based (turntable)
-- =========================================================================

jd_def["j_losted_turntable"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local mult = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                for _, v in ipairs(card.ability.extra.card_list) do
                    if v.rank and v.rank == scoring_card:get_id()
                        and (v.has_any_suit or scoring_card:is_suit(v.suit) or scoring_card.config.center == G.P_CENTERS.m_wild)
                        and scoring_card.config.center ~= G.P_CENTERS.m_stone then
                        mult = mult + (card.ability.extra.mult or 15) *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                        break
                    end
                end
            end
        end
        card.joker_display_values.mult = mult
    end
}
