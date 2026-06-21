local voucherInfo = {
    key = "negative_bias",
    pos = LOSTEDMOD.funcs.coordinate(0),
    atlas = 'losted_vouchers',
    config = { extra = { rate = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rate } }
    end
}

return voucherInfo
