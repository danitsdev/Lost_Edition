local jokerInfo = {
    key = "duke",
    pos = LOSTEDMOD.funcs.coordinate(27),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = true,
    blueprint_compat = true,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.other_card == context.scoring_hand[1] then
            local jacks_in_hand = 0
            for _, held_card in ipairs(G.hand.cards) do
                if held_card.base.id == 11 then
                    jacks_in_hand = jacks_in_hand + 1
                end
            end
            if jacks_in_hand > 0 then
                return {
                    repetitions = jacks_in_hand
                }
            end
        end
    end,
}

return jokerInfo
