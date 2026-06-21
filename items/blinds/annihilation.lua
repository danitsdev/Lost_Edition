local blindInfo = {
    key = 'annihilation',
    pos = { x = 0, y = 7 },
    atlas = 'losted_blinds',
    mult = 2,
    dollars = 5,
    boss = { min = 4 },
    boss_colour = HEX('27b987'),
    press_play = function(self)
        if G.GAME.blind.disabled then return end
        if not G.GAME.tags or #G.GAME.tags == 0 then return end
        local tags = G.GAME.tags
        local tag_to_remove = pseudorandom_element(tags, pseudoseed('losted_annihilation_tag'))
        if not tag_to_remove or not tag_to_remove.ID then return end

        local lock = tag_to_remove.ID
        G.CONTROLLER.locks[lock] = true
        tag_to_remove:yep('-', G.C.RED, function()
            if tag_to_remove.ability and tag_to_remove.ability.orbital_hand then
                G.orbital_hand = tag_to_remove.ability.orbital_hand
            end
            G.orbital_hand = nil
            G.CONTROLLER.locks[lock] = nil
            G.GAME.blind.triggered = true
            -- Trigger Matador-like effects
            SMODS.calculate_context({debuffed_hand = true, full_hand = G.play.cards, scoring_hand = G.play.cards, scoring_name = '', poker_hands = {}})
            return true
        end)
    end
}

return blindInfo
