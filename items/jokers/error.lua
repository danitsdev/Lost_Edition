local jokerInfo = {
    key = "error",
    pos = LOSTEDMOD.funcs.coordinate(37),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    config = { extra = { max_cards = 3 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "improvements_of_card", set = "Other"}
        return { vars = { card.ability.extra.max_cards } }
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn and not context.blueprint then
            local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
            juice_card_until(card, eval, true)
        end
        
        if context.before and context.main_eval and G.GAME.current_round.hands_played == 0 and
            #context.full_hand <= card.ability.extra.max_cards and not context.blueprint then
            local ante = G.GAME.round_resets.ante

            for card_index, playing_card in ipairs(context.full_hand) do
                local target_card = playing_card
                local seal_seed = 'error_seal_' .. card_index .. '_' .. ante
                local enhancement_seed = 'error_enh_' .. card_index .. '_' .. ante
                local edition_seed = 'error_edition_' .. card_index .. '_' .. ante
                local suit_seed = 'error_suit_' .. card_index .. '_' .. ante
                local rank_seed = 'error_rank_' .. card_index .. '_' .. ante
                
                local new_seal = SMODS.poll_seal({guaranteed = true, key = seal_seed})
                local new_enhancement = SMODS.poll_enhancement({guaranteed = true, key = enhancement_seed})
                local new_edition = SMODS.poll_edition({
                    key = edition_seed,
                    no_negative = true,
                    options = {
                        'e_foil',
                        'e_holo',
                        'e_polychrome',
                        'e_losted_quantum',
                    },
                })
                local new_suit = pseudorandom_element(SMODS.Suits, pseudoseed(suit_seed)).key
                local new_rank = pseudorandom_element(SMODS.Ranks, pseudoseed(rank_seed)).key
                local sound_pitch = 0.85 + (card_index * 0.05)

                event({
                    delay = 0.2,
                    trigger = 'before',
                    func = function()
                        if not target_card or target_card.REMOVED then
                            return true
                        end

                        play_sound('card1', sound_pitch)
                        target_card:juice_up(0.3, 0.4)

                        target_card:set_seal(new_seal, true, true)
                        target_card:set_ability(G.P_CENTERS[new_enhancement])

                        if new_edition then
                            target_card:set_edition(new_edition, true)
                        end

                        SMODS.change_base(target_card, new_suit, new_rank)

                        return true
                    end
                })
            end
            
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.PURPLE,
                card = card
            }
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { localize('Three of a Kind', 'poker_hands') } }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'round_win' then
            return G.GAME.last_hand_played == 'Three of a Kind' and G.GAME.blind.boss
        end
        return false
    end
}

return jokerInfo
