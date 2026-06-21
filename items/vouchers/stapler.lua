local voucherInfo = {
    key = "stapler",
    pos = LOSTEDMOD.funcs.coordinate(1),
    atlas = 'losted_vouchers',
    config = { extra = { rate = 2 } },
    unlocked = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rate } }
    end,
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.joker_rate = G.GAME.joker_rate * card.ability.extra.rate
                return true
            end
        }))
    end
}

return voucherInfo
