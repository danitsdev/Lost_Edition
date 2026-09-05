local jokerInfo = {
    key = "statue",
    pos = LOSTEDMOD.funcs.coordinate(20),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { xchips = 1.5 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone
        return { vars = { card.ability.extra.xchips } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
           context.other_card and SMODS.has_enhancement(context.other_card, 'm_stone') then
            return {
                xchips = card.ability.extra.xchips
            }
        end
    end,
    in_pool = function(self)
        for _, c in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(c, 'm_stone') then
                return true
            end
        end
        return false
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local stone_cards = 0
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_stone then
                    stone_cards = stone_cards + 1
                end
            end
            return stone_cards >= 5
        end
        return false
    end,
}

return jokerInfo
