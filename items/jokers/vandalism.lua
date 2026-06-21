local jokerInfo = {
    key = "vandalism",
    pos = LOSTEDMOD.funcs.coordinate(56),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
    config = { extra = { percent = 30 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
            -- Check if already processed by another Vandalism
            if G.GAME.blind.effect.losted_vandalism_processed then
                return nil
            end
            
            -- Count how many Vandalism jokers exist
            local vandalism_count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker.config and joker.config.center and joker.config.center.key == 'j_losted_vandalism' then
                    vandalism_count = vandalism_count + 1
                end
            end
            
            -- Mark as processed to prevent multiple executions
            G.GAME.blind.effect.losted_vandalism_processed = true
            
            local total_percent_reduction = math.min(90, card.ability.extra.percent * vandalism_count)
            local final_chips = math.floor(G.GAME.blind.chips * (100 - total_percent_reduction) / 100)
            G.GAME.blind.chips = final_chips
            G.GAME.blind.chip_text = number_format(final_chips)
            play_sound('chips1')
            
            return {
                message = localize('k_vandalism_ex'),
                colour = G.C.RED
            }
        end
        return nil
    end
}

return jokerInfo
