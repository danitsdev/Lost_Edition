local jokerInfo = {
    key = "medusa",
    pos = LOSTEDMOD.funcs.coordinate(90),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_stone
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and context.scoring_hand then
            local petrified = 0
            for _, played_card in ipairs(context.scoring_hand) do
                if played_card:is_face() and not SMODS.has_enhancement(played_card, 'm_stone') then
                    petrified = petrified + 1
                    played_card:set_ability(G.P_CENTERS.m_stone)
                    event({
                        func = function()
                            played_card:juice_up()
                            return true
                        end
                    })
                end
            end
            if petrified > 0 then
                return {
                    message = localize('k_losted_stone'),
                    colour = G.C.GREY
                }
            end
        end
    end,
}

return jokerInfo
