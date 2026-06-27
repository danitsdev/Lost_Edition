-- This file contains function overrides and modifications

-- Add editions to wheel of fortune and aura
local function losted_add_edition_info(info_queue, edition)
    if not edition then return end
    for _, queued in ipairs(info_queue) do
        if queued == edition then return end
    end
    info_queue[#info_queue + 1] = edition
end

local function losted_bunco_glitter_enabled()
    return G.P_CENTERS.e_bunc_glitter and
        (not BUNCOMOD or not BUNCOMOD.content or
            BUNCOMOD.content.config.gameplay_reworks)
end

SMODS.Consumable:take_ownership('wheel_of_fortune', {
    loc_vars = function(self, info_queue)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_foil)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_holo)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_polychrome)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_losted_quantum)
        if losted_bunco_glitter_enabled() then
            losted_add_edition_info(info_queue, G.P_CENTERS.e_bunc_glitter)
        end
        local vars = G.GAME and G.GAME.probabilities.normal and 
                    {G.GAME.probabilities.normal, self.config.extra} or {1, self.config.extra}
        return {key = 'c_losted_wheel_of_fortune', vars = vars}
    end
})

SMODS.Consumable:take_ownership('aura', {
    loc_vars = function(self, info_queue)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_foil)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_holo)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_polychrome)
        losted_add_edition_info(info_queue, G.P_CENTERS.e_losted_quantum)
        if losted_bunco_glitter_enabled() then
            losted_add_edition_info(info_queue, G.P_CENTERS.e_bunc_glitter)
            return {key = 'c_losted_aura_bunco'}
        end
        return {key = 'c_losted_aura'}
    end
})

SMODS.Booster:take_ownership_by_kind('Arcana', {
    create_card = function(self, card, i)
        if i == 1 and (
            (G.GAME and G.GAME.losted_the_joker_triggered) or
            (LOSTEDMOD and LOSTEDMOD.vars and LOSTEDMOD.vars.the_joker_triggered)
        ) then
            if G.GAME then G.GAME.losted_the_joker_triggered = false end
            LOSTEDMOD.vars.the_joker_triggered = false -- Reset the trigger after use
            return {
                set = "Spectral", 
                area = G.pack_cards, 
                skip_materialize = true, 
                soulable = false, 
                key = "c_losted_mystery_soul"
            }
        else
            if G.GAME.used_vouchers.v_omen_globe and pseudorandom('omen_globe') > 0.8 then
                return {set = "Spectral", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar2"}
            else
                return {set = "Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar1"}
            end
        end
    end
})

-- Compose the voucher multiplier onto the existing vanilla/SMODS method
-- without take_ownership, which would attribute Negative to Lost Edition.
local losted_negative = G.P_CENTERS.e_negative
local losted_negative_get_weight_ref = losted_negative.get_weight
function losted_negative:get_weight(...)
    local base_weight = losted_negative_get_weight_ref
        and losted_negative_get_weight_ref(self, ...) or self.weight
    local rate = 1
    if G.GAME and G.GAME.used_vouchers then
        if G.GAME.used_vouchers.v_losted_negative_magnet then
            rate = G.P_CENTERS.v_losted_negative_magnet.config.extra.rate
        elseif G.GAME.used_vouchers.v_losted_negative_bias then
            rate = G.P_CENTERS.v_losted_negative_bias.config.extra.rate
        end
    end
    return rate * base_weight
end

-- Real post-scoring enhancement effects. SMODS 1.0.0-beta exposes the scoring
-- pieces Diamond needs, but does not run a generic post_effect pass for custom
-- enhancements by itself. This mirrors Bunco's Copper Card seam in a
-- Lost Edition-owned wrapper so Diamond can rescore as a true scoring pass
-- instead of behaving like a Red Seal repetition.
local function losted_post_eval_card(card, context)
    if not card or not card.ability or not card.config or not card.config.center then
        return {}
    end
    if card.ability.set ~= 'Joker' and card.debuff then
        return {}
    end

    local ret = {}
    if card.ability.set == 'Enhanced' and card.config.center.post_effect then
        local enhancement = card:calculate_enhancement(context)
        if enhancement then
            ret.enhancement = enhancement
        end
    end
    return ret
end

function LOSTEDMOD.funcs.build_smods_post_context(card, context, scoring_hand)
    local passed_context = {}
    for k, v in pairs(context or {}) do
        passed_context[k] = v
    end
    passed_context.cardarea = G.play
    passed_context.main_scoring = true
    passed_context.post_effect = true
    passed_context.scoring_hand = scoring_hand
    passed_context.other_card = card
    passed_context.hand = G.hand
    passed_context.full_hand = G.play and G.play.cards or passed_context.full_hand
    return passed_context
end

local losted_calculate_main_scoring_ref = SMODS.calculate_main_scoring
function SMODS.calculate_main_scoring(context, scoring_hand)
    local result = losted_calculate_main_scoring_ref(context, scoring_hand)
    if not context or context.losted_post_effect_pass then
        return result
    end

    local cards = scoring_hand or (context.cardarea and context.cardarea.cards)
    if not cards then
        return result
    end

    for _, card in ipairs(cards) do
        local post_context = LOSTEDMOD.funcs.build_smods_post_context(card, context, scoring_hand)
        post_context.losted_post_effect_pass = true
        SMODS.trigger_effects({ losted_post_eval_card(card, post_context) }, card)
    end

    return result
end

-- Quantum follows the same compatibility contract as Blueprint for Jokers.
-- Playing cards remain eligible because their retrigger uses the native
-- repetition pipeline rather than Joker calculation copying.
function LOSTEDMOD.funcs.can_receive_quantum(card)
    if not card then return false end
    local center = card.config and card.config.center
    local card_set = (card.ability and card.ability.set) or (center and center.set)
    if card_set == 'Default' or card_set == 'Enhanced' then
        return true
    end
    return card_set == 'Joker' and center and center.blueprint_compat == true
end

-- Queue the first result so context modifiers (probabilities, draw amount, etc.)
-- compose on the retrigger instead of both calculations reading the same input.
function LOSTEDMOD.funcs.queue_quantum_context(card, effect, repetitions)
    card.losted_quantum_context_queue = card.losted_quantum_context_queue or {}
    for _ = 1, repetitions or 1 do
        card.losted_quantum_context_queue[#card.losted_quantum_context_queue + 1] = effect or false
    end
end

local losted_card_calculate_joker_ref = Card.calculate_joker
function Card:calculate_joker(context, ...)
    local queue = self.losted_quantum_context_queue
    if context and context.retrigger_joker == self and queue and #queue > 0 then
        local original_effect = table.remove(queue, 1)
        if #queue == 0 then self.losted_quantum_context_queue = nil end
        if original_effect and SMODS.update_context_flags then
            SMODS.update_context_flags(context, original_effect)
        end
    end
    return losted_card_calculate_joker_ref(self, context, ...)
end

-- Passive effects are outside calculate. Repeat the complete add/remove lifecycle
-- with from_debuff=true so SMODS suppresses duplicate card_added contexts while
-- retaining centre callbacks and vanilla passive fields.
local losted_card_add_to_deck_ref = Card.add_to_deck
local losted_card_remove_from_deck_ref = Card.remove_from_deck

local function quantum_lifecycle_eligible(card)
    return LOSTEDMOD.funcs.can_receive_quantum(card)
        and card.ability.set == 'Joker'
end

function LOSTEDMOD.funcs.apply_quantum_lifecycle(card)
    if not card or card.debuff or not card.added_to_deck or
        not card.edition or not card.edition.losted_quantum or
        card.losted_quantum_lifecycle_applied or
        not quantum_lifecycle_eligible(card) then
        return false
    end

    card.added_to_deck = false
    losted_card_add_to_deck_ref(card, true)
    card.losted_quantum_lifecycle_applied = true
    return true
end

function LOSTEDMOD.funcs.remove_quantum_lifecycle(card)
    if not card or not card.added_to_deck or
        not card.losted_quantum_lifecycle_applied then
        return false
    end

    losted_card_remove_from_deck_ref(card, true)
    card.added_to_deck = true -- Preserve the base lifecycle for the real removal.
    card.losted_quantum_lifecycle_applied = nil
    return true
end

function LOSTEDMOD.funcs.restore_quantum_lifecycle(card)
    card.losted_quantum_lifecycle_applied = card.added_to_deck and
        not card.debuff and quantum_lifecycle_eligible(card) and true or nil
end

function Card:add_to_deck(from_debuff)
    local was_added = self.added_to_deck
    if not was_added then self.losted_quantum_lifecycle_applied = nil end
    local result = losted_card_add_to_deck_ref(self, from_debuff)
    if not was_added and self.added_to_deck then
        LOSTEDMOD.funcs.apply_quantum_lifecycle(self)
    end
    return result
end

function Card:remove_from_deck(from_debuff)
    if self.added_to_deck then
        LOSTEDMOD.funcs.remove_quantum_lifecycle(self)
    end
    return losted_card_remove_from_deck_ref(self, from_debuff)
end

sendDebugMessage("[Lost Edition] Override hooks loaded")
return true
