local blindInfo = {
    key = 'inversion',
    pos = { x = 0, y = 3 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 1 },
    boss_colour = HEX('42b8f5'),
    
    set_blind = function(self, reset, silent)
        if reset or not G.GAME or not G.GAME.blind or G.GAME.blind.disabled then return end
        local state = G.GAME.blind.effect
        if state.losted_inversion_active then return end

        state.losted_inversion_hands = G.GAME.current_round.hands_left
        state.losted_inversion_discards = G.GAME.current_round.discards_left
        state.losted_inversion_active = true

        G.GAME.current_round.hands_left = state.losted_inversion_discards
        G.GAME.current_round.discards_left = state.losted_inversion_hands
    end,

    restore_round_values = function(self)
        local state = G.GAME and G.GAME.blind and G.GAME.blind.effect
        if not state or not state.losted_inversion_active then return end
        G.GAME.current_round.hands_left = state.losted_inversion_hands
        G.GAME.current_round.discards_left = state.losted_inversion_discards
        state.losted_inversion_active = nil
        state.losted_inversion_hands = nil
        state.losted_inversion_discards = nil
    end,

    defeat = function(self, silent)
        self:restore_round_values()
    end,
    disable = function(self)
        self:restore_round_values()
    end,
    
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end
}

return blindInfo
