local jokerInfo = {
    key = "the_passage",
    pos = LOSTEDMOD.funcs.coordinate(9),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = false,
    blueprint_compat = false,
    eternal_compat = false,
    config = { extra = { ante_change = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.ante_change } }
    end,
    calculate = function(self, card, context) end,
    remove_from_deck = function(self, card, from_debuff)
        if pseudorandom('losted_the_passage') < 0.5 then
            ease_ante(card.ability.extra.ante_change)
            G.GAME.round_resets.blind_ante = (G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante) + card.ability.extra.ante_change
            return {
                message = localize('k_ante_increased_ex'),
                colour = G.C.GREEN
            }
        else
            ease_ante(-card.ability.extra.ante_change)
            G.GAME.round_resets.blind_ante = (G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante) - card.ability.extra.ante_change
            return {
                message = localize('k_ante_decreased_ex'),
                colour = G.C.RED
            }
        end
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {
            vars = {
                localize { type = 'name_text', key = 'v_hieroglyph', set = 'Voucher' },
                localize { type = 'name_text', key = 'v_petroglyph', set = 'Voucher' },
            }
        }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'run_redeem' then
            return G.GAME.used_vouchers['v_hieroglyph'] and G.GAME.used_vouchers['v_petroglyph']
        end
        return false
    end
}

return jokerInfo
