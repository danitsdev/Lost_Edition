local blindInfo = {
    key = 'vampiric',
    pos = { x = 0, y = 1 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 6 },
    boss_colour = HEX('f31745'),
    config = {
        removed_enhancements = nil 
    },
    loc_vars = function(self)
        return { vars = {} }
    end,

    set_blind = function(self, card, from_debuff)
        if not self.config.removed_enhancements then
            self.config.removed_enhancements = setmetatable({}, {__mode = 'k'})
        end
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        if G.GAME.blind.disabled then
            return mult, hand_chips, false
        end
        local changed = false
        if not self.config.removed_enhancements then
            self.config.removed_enhancements = setmetatable({}, {__mode = 'k'})
        end

        for _, card in ipairs(cards) do
            local enhancements = SMODS.get_enhancements(card)
            if enhancements and next(enhancements) and not card.debuff then
                if not self.config.removed_enhancements[card] then
                    local stored = {}
                    for enh_key, _ in pairs(enhancements) do
                        stored[enh_key] = true
                    end
                    self.config.removed_enhancements[card] = stored
                end
                card:set_ability('c_base', nil, true)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:juice_up()
                        return true
                    end
                }))
                changed = true
                G.GAME.blind.triggered = true
            end
        end

        if changed then
            G.GAME.blind_message = {
                message = localize('k_losted_enhancements_removed'),
                colour = G.C.RED
            }
            -- Trigger Matador-like effects
            SMODS.calculate_context({debuffed_hand = true, full_hand = cards, scoring_hand = cards, scoring_name = text, poker_hands = poker_hands})
        end

        return mult, hand_chips, false
    end,

    defeat = function(self, card, from_debuff)
        if self.config.removed_enhancements then
            for c, enhs in pairs(self.config.removed_enhancements) do
                if c and not c.debuff and enhs then
                    local current = SMODS.get_enhancements(c) or {}
                    for enh_key, _ in pairs(enhs) do
                        if not current[enh_key] then
                            c:set_ability(enh_key, nil, true)
                        end
                    end
                    G.E_MANAGER:add_event(Event({func=function()
                        if c.juice_up then c:juice_up(0.3,0.4) end
                        return true
                    end}))
                end
            end
            self.config.removed_enhancements = nil
            G.GAME.blind_message = { message = localize('k_upgrade_ex'), colour = G.C.GREEN }
        end
    end
}

return blindInfo
