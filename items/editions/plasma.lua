local editionInfo = {
    key = 'plasma',
    shader = 'plasma',
    config = { pow_mult = 1.1 },
    in_shop = true,
    weight = 2, 
    extra_cost = 5,
    apply_to_float = true,
    sound = { sound = 'polychrome1', per = 1.02, vol = 0.24 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.edition.pow_mult } }
    end,
    in_pool = function(self, args)
        local source = args and args.source or ''
        return not source:find('standard_edition', 1, true)
            and source ~= 'illusion'
    end,
    get_weight = function(self)
        return (G.GAME.edition_rate - 1) * G.P_CENTERS["e_negative"].weight + G.GAME.edition_rate * self.weight
    end,
    calculate = function(self, card, context)
        -- Plasma is kept out of playing-card edition pools below. Its scoring
        -- hook remains the standard Edition hook so existing Joker behaviour
        -- and compatibility are preserved.
        if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            return {
                pow_mult = card.edition.pow_mult
            }
        end
    end
}

return editionInfo
