local function consumable_slots(card)
    return (card and card.ability and card.ability.extra and card.ability.extra.slots) or 0
end

local function change_consumable_slots(amount)
    if G.consumeables and G.consumeables.config then
        G.consumeables.config.card_limit = G.consumeables.config.card_limit + amount
    end
end

local function quantum_retriggers(card)
    if card and card.edition and card.edition.losted_quantum then
        return (LOSTEDMOD.funcs.get_quantum_retriggers and LOSTEDMOD.funcs.get_quantum_retriggers(card)) or 1
    end
    return 0
end

local function applied_slots(card)
    return (card and card.ability and card.ability.extra and
        card.ability.extra.losted_consumable_slots_applied) or 0
end

local function set_applied_slots(card, amount)
    if card and card.ability and card.ability.extra then
        card.ability.extra.losted_consumable_slots_applied = math.max(0, amount or 0)
    end
end

local function quantum_added(card)
    return (card and card.ability and card.ability.extra and
        card.ability.extra.losted_quantum_slots_added) or 0
end

local function set_quantum_added(card, amount)
    if card and card.ability and card.ability.extra then
        card.ability.extra.losted_quantum_slots_added = math.max(0, amount or 0)
    end
end

local jokerInfo = {
    key = "hoarding_joker",
    pos = LOSTEDMOD.funcs.coordinate(64),
    atlas = 'losted_jokers',
    rarity = 1,
    cost = 4,
    unlocked = true,
    blueprint_compat = false,
    config = { extra = { slots = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.slots } }
    end,
    add_to_deck = function(self, card, from_debuff)
        if card.debuff then return end
        local base = consumable_slots(card)
        local current = applied_slots(card)
        local quantum = quantum_retriggers(card)
        local target = base * (1 + quantum)

        if card.from_quantum and quantum > 0 then
            set_quantum_added(card, base * quantum)
        end

        local delta = target - current
        if delta > 0 then
            change_consumable_slots(delta)
            set_applied_slots(card, target)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        local current = applied_slots(card)
        if current <= 0 then return end

        local extra = quantum_added(card)
        if extra > 0 then
            set_quantum_added(card, 0)
            change_consumable_slots(-extra)
            set_applied_slots(card, current - extra)
        else
            change_consumable_slots(-current)
            set_applied_slots(card, 0)
        end
    end
}

return jokerInfo
