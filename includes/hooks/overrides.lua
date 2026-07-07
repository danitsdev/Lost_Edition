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

-- Vanilla coupon handling only zeroes shop jokers and boosters. VIP Pass creates
-- a free shop voucher, so preserve its free cost across any later set_cost()
-- refreshes without changing normal voucher pricing.
local losted_card_set_cost_ref = Card.set_cost
function Card:set_cost(...)
    losted_card_set_cost_ref(self, ...)
    if self.ability and self.ability.losted_vip_free_voucher then
        self.cost = 0
        self.sell_cost = 0
        self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
    end
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
        if card and card.ability and card.config and card.config.center and
            card.ability.set == 'Enhanced' and card.config.center.post_effect and
            not card.debuff then
            local post_context = LOSTEDMOD.funcs.build_smods_post_context(card, context, scoring_hand)
            post_context.losted_post_effect_pass = true
            local effect = losted_post_eval_card(card, post_context)
            if effect and next(effect) then
                SMODS.trigger_effects({ effect }, card)
            end
        end
    end

    return result
end

-- Quantum is intentionally broader than Blueprint. Blueprint copies only
-- compatible calculate effects; Quantum behaves like the card has an internal
-- second copy. Playing cards still use the native repetition pipeline.
LOSTEDMOD.funcs.quantum_no_effect_center_keys = {
    -- Binary vanilla hand-evaluation semantics; a second copy has no stronger
    -- meaning without rewriting the rule itself (4-card hands do not become
    -- 3-card hands, Shortcut does not skip two gaps, etc.).
    j_four_fingers = true,
    j_shortcut = true,
    j_splash = true,
    j_pareidolia = true,
    j_smeared = true,
    j_astronomer = true,
    j_midas_mask = true,
    j_luchador = true,
    j_mr_bones = true,
    j_chicot = true,

    -- Lost Edition fixed replacement/passive effects where reapplying the same
    -- value is a trap rather than a meaningful second copy.
    j_losted_mysterious = true,
    j_losted_welder = true,
    j_losted_last_resort = true,
    j_losted_mitosis = true,
    j_losted_jersey_10 = true,
}

function LOSTEDMOD.funcs.can_receive_quantum(card)
    if not card then return false end
    local center = card.config and card.config.center
    local center_key = (center and center.key) or (card.config and card.config.center_key)
    if center_key and LOSTEDMOD.funcs.quantum_no_effect_center_keys[center_key] then
        return false
    end
    local card_set = (card.ability and card.ability.set) or (center and center.set)
    if card_set == 'Default' or card_set == 'Enhanced' then
        return true
    end
    return card_set == 'Joker' and center ~= nil
end

function LOSTEDMOD.funcs.is_quantum_copy(context)
    return context and context.losted_quantum_copy or false
end

function LOSTEDMOD.funcs.get_quantum_retriggers(card)
    return (card and card.edition and card.edition.extra and card.edition.extra.retriggers) or
        (G.P_CENTERS.e_losted_quantum and G.P_CENTERS.e_losted_quantum.config and
            G.P_CENTERS.e_losted_quantum.config.extra and
            G.P_CENTERS.e_losted_quantum.config.extra.retriggers) or
        1
end

local function losted_get_edition_key(edition)
    if type(edition) == 'string' then return edition end
    if type(edition) ~= 'table' then return nil end
    if edition.key then return edition.key end
    if edition.type then return 'e_' .. edition.type end
    for key, enabled in pairs(edition) do
        if enabled then return 'e_' .. key end
    end
end

function LOSTEDMOD.funcs.can_apply_quantum_edition(card)
    return LOSTEDMOD.funcs.can_receive_quantum(card)
end

function LOSTEDMOD.funcs.in_quantum_copy_context()
    if not SMODS or not SMODS.context_stack then return false end
    for index = #SMODS.context_stack, 1, -1 do
        local stacked_context = SMODS.context_stack[index] and SMODS.context_stack[index].context
        if stacked_context and stacked_context.losted_quantum_copy then
            return true
        end
    end
    return false
end

function LOSTEDMOD.funcs.should_count_quantum_progress(context)
    return not (context and context.losted_quantum_copy)
end

local function losted_prepare_quantum_copy(card, context)
    if not (card and context) then return nil end
    local center_key = card.config and card.config.center and card.config.center.key
    if center_key == 'j_sixth_sense' and context.destroying_card and
        context.full_hand and context.full_hand[1] then
        local sixth_card = context.full_hand[1]
        local old_sixth_sense = sixth_card.sixth_sense
        sixth_card.sixth_sense = nil
        return function()
            sixth_card.sixth_sense = old_sixth_sense or sixth_card.sixth_sense
        end
    end
end

local losted_card_set_edition_quantum_gate_ref = Card.set_edition
function Card:set_edition(edition, immediate, silent, delay)
    if losted_get_edition_key(edition) == 'e_losted_quantum' and
        not LOSTEDMOD.funcs.can_apply_quantum_edition(self) then
        return
    end
    local result = losted_card_set_edition_quantum_gate_ref(self, edition, immediate, silent, delay)
    if LOSTEDMOD.funcs.sync_quantum_managed_lifecycle then
        LOSTEDMOD.funcs.sync_quantum_managed_lifecycle(self)
    end
    return result
end

local losted_smods_scale_card_ref = SMODS.scale_card
function SMODS.scale_card(card, args)
    if LOSTEDMOD.funcs.in_quantum_copy_context() then
        return
    end
    return losted_smods_scale_card_ref(card, args)
end

-- Quantum has two separate contracts:
-- 1) calculate/retrigger copying, which is handled by Quantum's own copy flag;
-- 2) passive add/remove lifecycle duplication, which is how static effects such
--    as Oops! All 6s, Hoarding Joker slots, and Welder-style global state work.
-- Keep this intentionally narrower than "any non-compatible Joker" so remove-
-- only sell effects do not unexpectedly fire twice.
function LOSTEDMOD.funcs.can_receive_quantum_lifecycle(card)
    if not card then return false end
    local center = card.config and card.config.center
    local center_key = (center and center.key) or (card.config and card.config.center_key)
    if LOSTEDMOD.funcs.quantum_managed_lifecycle_keys and
        center_key and LOSTEDMOD.funcs.quantum_managed_lifecycle_keys[center_key] then
        return false
    end
    local card_set = (card.ability and card.ability.set) or (center and center.set)
    if card_set ~= 'Joker' then return false end
    if LOSTEDMOD.funcs.can_receive_quantum(card) then return true end
    if center and type(center.add_to_deck) == 'function' then return true end
    return (card.config and card.config.center_key == 'j_oops') or
        (card.ability and card.ability.name == 'Oops! All 6s')
end

function LOSTEDMOD.funcs.should_quantum_copy_joker(card, context)
    if not (card and context and card.ability and card.ability.set == 'Joker') then
        return false
    end
    if card.debuff or not (card.edition and card.edition.losted_quantum) then
        return false
    end
    if context.losted_quantum_copy or context.retrigger_joker or
        context.retrigger_joker_check or context.post_trigger then
        return false
    end
    if SMODS.is_getter_context and SMODS.is_getter_context(context) then
        return false
    end
    return LOSTEDMOD.funcs.can_receive_quantum(card)
end

-- Queue the first result so context modifiers (probabilities, draw amount, etc.)
-- compose on the retrigger instead of both calculations reading the same input.
function LOSTEDMOD.funcs.queue_quantum_context(card, effect, repetitions)
    card.losted_quantum_context_queue = {}
    for _ = 1, repetitions or 1 do
        card.losted_quantum_context_queue[#card.losted_quantum_context_queue + 1] = effect or false
    end
end

-- Some SMODS Better Calc paths execute Joker retriggers with
-- context.retrigger_joker = true instead of the retriggering card. Keep
-- Quantum's own retrigger first so its per-card queue is consumed by the
-- intended activation even when other Jokers also retrigger the same card.
if SMODS and SMODS.calculate_retriggers and not SMODS.losted_quantum_retrigger_order then
    local losted_smods_calculate_retriggers_ref = SMODS.calculate_retriggers
    function SMODS.calculate_retriggers(card, context, _ret)
        local retriggers = losted_smods_calculate_retriggers_ref(card, context, _ret)
        if not (card and card.edition and card.edition.losted_quantum and retriggers and #retriggers > 1) then
            return retriggers
        end

        local ordered = {}
        local quantum_count = 0
        for _, retrigger in ipairs(retriggers) do
            if retrigger.losted_quantum_retrigger then
                quantum_count = quantum_count + 1
                ordered[#ordered + 1] = retrigger
            end
        end
        if quantum_count == 0 then return retriggers end

        for _, retrigger in ipairs(retriggers) do
            if not retrigger.losted_quantum_retrigger then
                ordered[#ordered + 1] = retrigger
            end
        end
        return ordered
    end
    SMODS.losted_quantum_retrigger_order = true
end

local losted_card_calculate_joker_ref = Card.calculate_joker
function Card:calculate_joker(context, ...)
    local queue = self.losted_quantum_context_queue
    -- SMODS normally stores the retriggering Joker in context.retrigger_joker,
    -- but some Better Calc scoring paths still pass a plain boolean `true`.
    -- The per-card queue is what proves this retrigger belongs to Quantum.
    if not (context and context.retrigger_joker and queue and #queue > 0) then
        return losted_card_calculate_joker_ref(self, context, ...)
    end

    local original_effect = table.remove(queue, 1)
    if #queue == 0 then self.losted_quantum_context_queue = nil end
    if original_effect and SMODS.update_context_flags then
        SMODS.update_context_flags(context, original_effect)
    end

    local ret, triggered
    local args = { ... }
    local arg_count = select('#', ...)
    local old_quantum_copy = context.losted_quantum_copy
    context.losted_quantum_copy = true
    local restore_quantum_copy_state = losted_prepare_quantum_copy(self, context)
    local ok, err = xpcall(function()
        ret, triggered = losted_card_calculate_joker_ref(self, context, unpack(args, 1, arg_count))
    end, debug and debug.traceback or function(e) return e end)
    if restore_quantum_copy_state then restore_quantum_copy_state() end
    context.losted_quantum_copy = old_quantum_copy
    if not ok then error(err, 0) end

    return ret, triggered
end

local function losted_normalize_direct_quantum_ret(ret)
    if ret == true then ret = { remove = true } end
    if type(ret) == 'table' then
        ret.no_retrigger = true
        ret.losted_quantum_direct_copy = true
        return ret
    end
end

local losted_card_calculate_joker_quantum_ref = Card.calculate_joker
function Card:calculate_joker(context, ...)
    local ret, triggered = losted_card_calculate_joker_quantum_ref(self, context, ...)
    if ret or triggered or not LOSTEDMOD.funcs.should_quantum_copy_joker(self, context) then
        return ret, triggered
    end

    local args = { ... }
    local arg_count = select('#', ...)
    local copy_ret, copy_triggered
    local old_quantum_copy = context.losted_quantum_copy
    context.losted_quantum_copy = true
    local restore_quantum_copy_state = losted_prepare_quantum_copy(self, context)
    local ok, err = xpcall(function()
        copy_ret, copy_triggered = losted_card_calculate_joker_ref(self, context, unpack(args, 1, arg_count))
    end, debug and debug.traceback or function(e) return e end)
    if restore_quantum_copy_state then restore_quantum_copy_state() end
    context.losted_quantum_copy = old_quantum_copy
    if not ok then error(err, 0) end

    return losted_normalize_direct_quantum_ret(copy_ret), triggered or copy_triggered
end

-- End-of-round money is not a calculate_joker context in vanilla; Jokers such
-- as Delayed Gratification, Golden Joker, Rocket, and Satellite use this direct
-- dollar-bonus path. Quantum should act like an extra internal copy here too.
local losted_card_calculate_dollar_bonus_ref = Card.calculate_dollar_bonus
function Card:calculate_dollar_bonus(...)
    local ret, ret_opts = losted_card_calculate_dollar_bonus_ref(self, ...)
    if ret and self.ability and self.ability.set == 'Joker' and
        self.edition and self.edition.losted_quantum and
        LOSTEDMOD.funcs.can_receive_quantum(self) then
        ret = ret * (1 + LOSTEDMOD.funcs.get_quantum_retriggers(self))
    end
    return ret, ret_opts
end

-- Passive effects are outside calculate. Repeat the complete add/remove lifecycle
-- with from_debuff=true so SMODS suppresses duplicate card_added contexts while
-- retaining centre callbacks and vanilla passive fields.
local losted_card_add_to_deck_ref = Card.add_to_deck
local losted_card_remove_from_deck_ref = Card.remove_from_deck

LOSTEDMOD.funcs.quantum_managed_lifecycle_keys = {
    j_losted_hoarding_joker = true,
    j_losted_glutton = true,
}

function LOSTEDMOD.funcs.sync_quantum_managed_lifecycle(card, removing)
    if not (card and card.ability and card.ability.extra and G.consumeables and G.consumeables.config) then
        return false
    end

    local center = card.config and card.config.center
    local center_key = (center and center.key) or (card.config and card.config.center_key)
    if not (center_key and LOSTEDMOD.funcs.quantum_managed_lifecycle_keys[center_key]) then
        return false
    end

    local slots = card.ability.extra.slots or 0
    local applied = card.ability.extra.losted_consumable_slots_applied or 0
    local quantum_count = (card.edition and card.edition.losted_quantum) and
        LOSTEDMOD.funcs.get_quantum_retriggers(card) or 0
    local target = (removing or not card.added_to_deck or card.debuff) and 0 or
        (slots * (1 + quantum_count))

    local delta = target - applied
    if delta ~= 0 then
        G.consumeables.config.card_limit = G.consumeables.config.card_limit + delta
    end
    card.ability.extra.losted_consumable_slots_applied = math.max(0, target)
    return true
end

local function quantum_lifecycle_eligible(card)
    return LOSTEDMOD.funcs.can_receive_quantum_lifecycle(card)
end

local function get_quantum_lifecycle_count(card)
    if not card then return 0 end
    local ability_count = card.ability and card.ability.losted_quantum_lifecycle_count
    return tonumber(card.losted_quantum_lifecycle_count or ability_count or
        (card.losted_quantum_lifecycle_applied and 1) or 0) or 0
end

local function set_quantum_lifecycle_count(card, count)
    if not card then return end
    if count and count > 0 then
        card.losted_quantum_lifecycle_count = count
        card.losted_quantum_lifecycle_applied = true
        if card.ability then card.ability.losted_quantum_lifecycle_count = count end
    else
        card.losted_quantum_lifecycle_count = nil
        card.losted_quantum_lifecycle_applied = nil
        if card.ability then card.ability.losted_quantum_lifecycle_count = nil end
    end
end

function LOSTEDMOD.funcs.apply_quantum_lifecycle(card)
    if not card or card.debuff or not card.added_to_deck or
        not card.edition or not card.edition.losted_quantum or
        get_quantum_lifecycle_count(card) > 0 or
        not quantum_lifecycle_eligible(card) then
        return false
    end

    card.added_to_deck = false
    local old_from_quantum = card.from_quantum
    card.from_quantum = true
    local count = LOSTEDMOD.funcs.get_quantum_retriggers(card)
    local ok, err = xpcall(function()
        for _ = 1, count do
            card.added_to_deck = false
            losted_card_add_to_deck_ref(card, true)
        end
    end, debug and debug.traceback or function(e) return e end)
    card.from_quantum = old_from_quantum
    if not ok then error(err, 0) end
    set_quantum_lifecycle_count(card, count)
    return true
end

function LOSTEDMOD.funcs.remove_quantum_lifecycle(card)
    local count = get_quantum_lifecycle_count(card)
    if count <= 0 and card and card.added_to_deck and card.edition and
        card.edition.losted_quantum and quantum_lifecycle_eligible(card) then
        count = LOSTEDMOD.funcs.get_quantum_retriggers(card)
    end
    if not card or count <= 0 then
        return false
    end

    local was_added = card.added_to_deck
    local old_from_quantum = card.from_quantum
    card.from_quantum = true
    local ok, err = xpcall(function()
        for _ = 1, count do
            card.added_to_deck = true
            losted_card_remove_from_deck_ref(card, true)
        end
    end, debug and debug.traceback or function(e) return e end)
    card.from_quantum = old_from_quantum
    card.added_to_deck = was_added -- Preserve the base lifecycle for the real removal.
    set_quantum_lifecycle_count(card, 0)
    if not ok then error(err, 0) end
    return true
end

function LOSTEDMOD.funcs.restore_quantum_lifecycle(card)
    if card.added_to_deck and not card.debuff and quantum_lifecycle_eligible(card) then
        set_quantum_lifecycle_count(card, math.max(1, get_quantum_lifecycle_count(card)))
    else
        set_quantum_lifecycle_count(card, 0)
    end
end

function Card:add_to_deck(from_debuff)
    local was_added = self.added_to_deck
    if not was_added then set_quantum_lifecycle_count(self, 0) end
    local result = losted_card_add_to_deck_ref(self, from_debuff)
    LOSTEDMOD.funcs.sync_quantum_managed_lifecycle(self)
    if not was_added and self.added_to_deck then
        LOSTEDMOD.funcs.apply_quantum_lifecycle(self)
    end
    return result
end

function Card:remove_from_deck(from_debuff)
    local removed_quantum_lifecycle
    if self.added_to_deck or self.losted_quantum_lifecycle_applied then
        removed_quantum_lifecycle = LOSTEDMOD.funcs.remove_quantum_lifecycle(self)
    end
    self.losted_quantum_lifecycle_removed_this_call = removed_quantum_lifecycle or nil
    local result = losted_card_remove_from_deck_ref(self, from_debuff)
    self.losted_quantum_lifecycle_removed_this_call = nil
    LOSTEDMOD.funcs.sync_quantum_managed_lifecycle(self, true)
    return result
end

sendDebugMessage("[Lost Edition] Override hooks loaded")
return true
