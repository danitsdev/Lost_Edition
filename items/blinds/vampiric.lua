local function card_id(card)
    return card and card.unique_val and tostring(card.unique_val) or nil
end

local function removed_enhancements()
    local effect = G.GAME and G.GAME.blind and G.GAME.blind.effect
    if not effect then return nil end
    effect.losted_vampiric_enhancements = effect.losted_vampiric_enhancements or {}
    return effect.losted_vampiric_enhancements
end

local function restore_enhancements()
    local removed = removed_enhancements()
    if not removed then return end

    for _, card in ipairs(G.playing_cards or {}) do
        local stored = removed[card_id(card)]
        if stored then
            local current = SMODS.get_enhancements(card) or {}
            for enhancement_key in pairs(stored) do
                if not current[enhancement_key] then
                    card:set_ability(enhancement_key, nil, true)
                end
            end
            if card.juice_up then card:juice_up(0.3, 0.4) end
        end
    end

    G.GAME.blind.effect.losted_vampiric_enhancements = {}
    G.GAME.blind_message = { message = localize('k_upgrade_ex'), colour = G.C.GREEN }
end

local blindInfo = {
    key = 'vampiric',
    pos = { x = 0, y = 1 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 6 },
    boss_colour = HEX('f31745'),

    set_blind = function(self, reset)
        if not reset then
            G.GAME.blind.effect.losted_vampiric_enhancements = {}
        end
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        if G.GAME.blind.disabled then return mult, hand_chips, false end
        local removed = removed_enhancements()
        local changed = false

        for _, card in ipairs(cards) do
            local enhancements = SMODS.get_enhancements(card)
            local id = card_id(card)
            if id and enhancements and next(enhancements) and not card.debuff then
                if not removed[id] then
                    removed[id] = {}
                    for enhancement_key in pairs(enhancements) do
                        removed[id][enhancement_key] = true
                    end
                end
                card:set_ability('c_base', nil, true)
                card:juice_up()
                changed = true
                G.GAME.blind.triggered = true
            end
        end

        if changed then
            G.GAME.blind_message = {
                message = localize('k_losted_enhancements_removed'),
                colour = G.C.RED,
            }
            SMODS.calculate_context({
                debuffed_hand = true,
                full_hand = cards,
                scoring_hand = cards,
                scoring_name = text,
                poker_hands = poker_hands,
            })
        end

        return mult, hand_chips, false
    end,

    disable = function(self)
        restore_enhancements()
    end,

    defeat = function(self)
        restore_enhancements()
    end,
}

return blindInfo
