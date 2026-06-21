local function get_random_visible_hand()
    local _poker_hands = {}
    for k, v in pairs(G.GAME.hands) do
        if v.visible then
            table.insert(_poker_hands, k)
        end
    end
    return pseudorandom_element(_poker_hands, 'labyrinth')
end

local blindInfo = {
    key = "labyrinth",
    dollars = 5,
    mult = 2,
    pos = { x = 0, y = 5 },
    atlas = "losted_blinds",
    boss = { min = 2 },
    boss_colour = HEX('f37013'),
    set_blind = function(self, reset)
        if not reset then
            G.GAME.blind.effect.losted_labyrinth_hand = get_random_visible_hand()
        end
    end,
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.setting_blind or not blind.effect.losted_labyrinth_hand then
                blind.effect.losted_labyrinth_hand = get_random_visible_hand()
            end
            if context.hand_played or context.hand_drawn then
                blind.effect.losted_labyrinth_hand = get_random_visible_hand()
            end
        end
    end,
    debuff_hand = function(self, cards, hand, handname, check)
        local debuffed_hand = G.GAME.blind.effect.losted_labyrinth_hand
        if debuffed_hand and debuffed_hand == handname then
            if not check then
                G.GAME.blind.triggered = true
            end
            return true
        end
    end
}

return blindInfo
