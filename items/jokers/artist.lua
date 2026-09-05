local jokerInfo = {
    key = "artist",   
    pos = LOSTEDMOD.funcs.coordinate(52), 
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = true,
    config = { extra = { odds = 2 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_wild
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_artist')
        return { vars = { numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and next(context.poker_hands['Flush']) then
            local upgraded_cards = {}
            local hands_played = (G.GAME and G.GAME.current_round and G.GAME.current_round.hands_played) or 0
            local ante = (G.GAME and G.GAME.round_resets and G.GAME.round_resets.ante) or 0

            for index, playing_card in ipairs(context.full_hand) do
                if not SMODS.has_enhancement(playing_card, 'm_wild') and
                    SMODS.pseudorandom_probability(
                        card,
                        'losted_artist_' .. tostring(ante) .. '_' .. tostring(hands_played) .. '_' .. tostring(index),
                        1,
                        card.ability.extra.odds,
                        'losted_artist'
                    ) then
                    playing_card:set_ability(G.P_CENTERS.m_wild, nil, true)
                    if SMODS.recalc_debuff then
                        SMODS.recalc_debuff(playing_card)
                    end
                    upgraded_cards[#upgraded_cards + 1] = playing_card
                end
            end

            if #upgraded_cards > 0 then
                for i, upgraded_card in ipairs(upgraded_cards) do
                    event({
                        trigger = 'after',
                        delay = 0.05 * i,
                        func = function()
                            upgraded_card:juice_up(0.3, 0.4)
                            play_sound('card1', 0.8 + (0.03 * i), 0.8)
                            return true
                        end
                    })
                end

                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.ENHANCE,
                    card = card
                }
            end
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local wild_cards = 0
            for j = 1, #args.cards do
                if args.cards[j].config.center == G.P_CENTERS.m_wild then
                    wild_cards = wild_cards + 1
                end
            end
            return wild_cards >= 5
        end
        return false
    end,
}

return jokerInfo
