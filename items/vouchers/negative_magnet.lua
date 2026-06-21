local voucherInfo = {
    key = "negative_magnet",
    pos = LOSTEDMOD.funcs.coordinate(10),
    atlas = 'losted_vouchers',
    config = { extra = { rate = 4 } },
    unlocked = false,
    requires = { 'v_losted_negative_bias' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rate } }
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 4 } }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'have_edition' then
            if not G.jokers or not G.jokers.cards then
                return false
            end
            
            local negative_jokers = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker.edition and joker.edition.type == 'negative' then
                    negative_jokers = negative_jokers + 1
                end
            end
            return negative_jokers >= 4
        end
        return false
    end
}

return voucherInfo
