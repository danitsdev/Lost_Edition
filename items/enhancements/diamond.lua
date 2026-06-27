local enhancementInfo = {
    key = 'diamond',
    pos = LOSTEDMOD.funcs.coordinate(0),
    atlas = 'losted_enhancements',
    post_effect = true,
    rescore_amount = 1,
    config = { h_x_chips = 1.2, h_x_mult = 1.2 },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.h_x_chips, card.ability.h_x_mult } }
    end,

    calculate = function(self, card, context, effect)
        if context.post_effect
        and context.cardarea == G.play
        and context.main_scoring
        and context.scoring_hand
        and ((not card.config.diamond_rescored_times) or (card.config.diamond_rescored_times < card.config.center.rescore_amount)) then

            local card_position
            for position, scoring_card in ipairs(context.scoring_hand) do
                if scoring_card == card then
                    card_position = position
                    break
                end
            end

            local next_card = context.scoring_hand[card_position + 1]
            local last_in_chain = not (
                next_card
                and next_card.config.center == card.config.center
                and not next_card.debuff
            )

            if last_in_chain then
                local streak = false
                local previous_card = context.scoring_hand[card_position - 1]
                if previous_card
                    and previous_card.config.center == card.config.center
                    and not previous_card.debuff then
                    streak = true
                end

                if streak then
                    return {
                        func = function()
                            while (card.config.diamond_rescored_times or 0) < card.config.center.rescore_amount do
                                local diamond_chain = { card }
                                local offset = 1

                                while true do
                                    local chain_card = context.scoring_hand[card_position - offset]
                                    if chain_card
                                        and chain_card.config.center == card.config.center
                                        and not chain_card.debuff then
                                        table.insert(diamond_chain, chain_card)
                                    else
                                        break
                                    end
                                    offset = offset + 1
                                end

                                for chain_index = #diamond_chain, 1, -1 do
                                    local diamond_card = diamond_chain[chain_index]
                                    event({
                                        func = function()
                                            big_juice(diamond_card)
                                            return true
                                        end
                                    })
                                end

                                play_area_status_text(localize('k_again_ex'))

                                for chain_index = #diamond_chain, 1, -1 do
                                    local diamond_card = diamond_chain[chain_index]
                                    for _, play_card in ipairs(G.play.cards) do
                                        if play_card == diamond_card then
                                            diamond_card.config.diamond_rescored_times =
                                                (diamond_card.config.diamond_rescored_times or 0) + 1
                                            local passed_context = LOSTEDMOD.funcs.build_smods_post_context(
                                                play_card,
                                                context,
                                                context.scoring_hand
                                            )
                                            SMODS.score_card(play_card, passed_context)
                                        end
                                    end
                                end

                                SMODS.calculate_context({ rescore_cards = diamond_chain })
                            end
                        end,
                    }
                end
            end
        end

        if context.after and context.scoring_hand then
            for _, other_card in ipairs(context.scoring_hand) do
                other_card.config.diamond_rescored_times = 0
            end
        end
    end,
}

return enhancementInfo
