local function card_id(card)
    return card and card.unique_val and tostring(card.unique_val) or nil
end

local function privilege_state()
    local effect = G.GAME and G.GAME.blind and G.GAME.blind.effect
    if not effect then return nil end
    effect.losted_privilege = effect.losted_privilege or {
        processed = {},
        debuffed = {},
    }
    return effect.losted_privilege
end

local function clear_privilege()
    local state = privilege_state()
    if not state then return end
    state.processed = {}
    state.debuffed = {}
    for _, card in ipairs(G.playing_cards or {}) do
        SMODS.recalc_debuff(card)
    end
end

local blindInfo = {
    key = 'privilege',
    pos = { x = 0, y = 2 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 4 },
    boss_colour = HEX('ffdf7d'),
    config = { extra = { odds = 8 } },

    loc_vars = function(self)
        local numerator, denominator = SMODS.get_probability_vars(self, 1, self.config.extra.odds, 'losted_privilege')
        return { vars = { numerator, denominator } }
    end,

    collection_loc_vars = function(self)
        return { vars = { '1', '8' } }
    end,

    set_blind = function(self, reset)
        if not reset then
            local state = privilege_state()
            state.processed = {}
            state.debuffed = {}
        end
    end,

    drawn_to_hand = function(self)
        if not G.GAME or not G.GAME.blind or G.GAME.blind.disabled or not G.hand then return end
        local state = privilege_state()
        local odds = self.config.extra.odds or 8

        for _, card in ipairs(G.hand.cards) do
            local id = card_id(card)
            if id and not state.processed[id] then
                state.processed[id] = true
                if SMODS.pseudorandom_probability(self, 'losted_privilege_' .. id, 1, odds, 'losted_privilege') then
                    state.debuffed[id] = true
                end
                SMODS.recalc_debuff(card)
            end
        end
    end,

    recalc_debuff = function(self, card, from_blind)
        if G.GAME.blind.disabled then return nil end
        local state = privilege_state()
        local id = card_id(card)
        return state and id and state.debuffed[id] or nil
    end,

    disable = function(self)
        clear_privilege()
    end,

    defeat = function(self)
        clear_privilege()
    end,
}

return blindInfo
