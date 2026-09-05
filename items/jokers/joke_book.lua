local jokerInfo = {
    key = "joke_book",
    pos = LOSTEDMOD.funcs.coordinate(58),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = { extra = { xmult_gain = 0.3, xmult = 1, poker_hand = 'High Card' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult_gain, card.ability.extra.xmult, localize(card.ability.extra.poker_hand, 'poker_hands') } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and context.scoring_name == card.ability.extra.poker_hand and
            not context.blueprint then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "xmult",
                scalar_value = "xmult_gain",
                scaling_message = {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                }
            })
        end
        
        if context.before and context.main_eval and context.scoring_name ~= card.ability.extra.poker_hand and
            not context.blueprint then
            if to_big(card.ability.extra.xmult) > to_big(1) then
                SMODS.reset_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "xmult",
                    reset_value = 1,
                    message_key = 'k_reset',
                    message_colour = G.C.RED
                })
            end
        end
        
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if not G.GAME.losted_joke_book_hand then
            local _poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible then
                    _poker_hands[#_poker_hands + 1] = k
                end
            end
            G.GAME.losted_joke_book_hand = pseudorandom_element(_poker_hands,
                (card.area and card.area.config.type == 'title') and 'joke_book_false' or 'joke_book_hand')
        end
        
        card.ability.extra.poker_hand = G.GAME.losted_joke_book_hand
    end
}

-- Additional global functions for this joker
local function reset_joke_book_hand()
    -- Reset the Joke Book hand choice for new runs
    G.GAME.losted_joke_book_hand = nil
end

-- Global reset functions
LOSTEDMOD.funcs.reset_joke_book_hand = reset_joke_book_hand

return jokerInfo
