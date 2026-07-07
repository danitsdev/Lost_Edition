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
    return card and card.from_quantum and 1 or 0
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

local function desired_slots(card)
    return consumable_slots(card) * (1 + quantum_retriggers(card))
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
        local current_slots = applied_slots(card)
        local target_slots = desired_slots(card)
        change_consumable_slots(target_slots - current_slots)
        set_applied_slots(card, target_slots)
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.from_quantum then
            local current_slots = applied_slots(card)
            if current_slots <= 0 then current_slots = desired_slots(card) end
            local target_slots = consumable_slots(card)
            change_consumable_slots(target_slots - current_slots)
            set_applied_slots(card, target_slots)
            return
        end

        local current_slots = applied_slots(card)
        if current_slots <= 0 then current_slots = desired_slots(card) end
        change_consumable_slots(-current_slots)
        set_applied_slots(card, 0)
    end
}

return jokerInfo
