-- Dollar bonus system for Totem
if not LOSTEDMOD.totem_bonus then
    LOSTEDMOD.totem_bonus = true

    -- Helpers
    local function is_positive_amount(x)
        if type(x) == 'number' then return x > 0 end
        if type(x) == 'table' then
            if x.sign and x.sign > 0 then return true end
            return false
        end
        return false
    end

    -- 1 in odds chance to double the money gained (apply an extra ease_dollars)
    local function should_double_and_flash(mod)
        if not G.jokers or not is_positive_amount(mod) then return false, nil end
        for _, v in ipairs(G.jokers.cards) do
            if v.config and v.config.center and v.config.center.key == 'j_losted_totem' and not v.debuff then
                local odds = (v.config.extra and v.config.extra.odds) or 3
                if SMODS.pseudorandom_probability(v, 'losted_totem', 1, odds, 'losted_totem') then
                    -- Show bonus text on the Totem card
                    G.E_MANAGER:add_event(Event {
                        func = function()
                            card_eval_status_text(v, 'extra', nil, nil, nil, {
                                message = (type(mod) == 'number' and ('$' .. tostring(mod))) or 'x2',
                                colour = G.C.MONEY,
                                instant = true
                            })
                            return true
                        end
                    })
                    return true, v
                end
            end
        end
        return false, nil
    end

    -- Hook to add bonus money if Totem is present by applying the same amount twice
    local original_ease_dollars = ease_dollars
    function ease_dollars(mod, ...)
        local double = should_double_and_flash(mod)
        if double then
            -- Apply extra payout first (or after, order is not critical)
            original_ease_dollars(mod, ...)
        end
        return original_ease_dollars(mod, ...)
    end
end

local jokerInfo = {
    key = "totem",
    pos = LOSTEDMOD.funcs.coordinate(26),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    config = {
        extra = {
            odds = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'losted_totem')
        return {
            vars = {numerator, denominator}
        }
    end,
    calculate = function(self, card, context)
        return nil
    end,
    in_pool = function(self)
        return true
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == 'c_losted_running_on_fumes' then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
}

return jokerInfo
