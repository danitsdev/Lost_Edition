local function get_active_welder()
    local cached = LOSTEDMOD.vars.active_welder
    if not LOSTEDMOD.vars.active_welder_cache_dirty then
        if not cached or (cached.added_to_deck and not cached.debuff and
            cached.config and cached.config.center and
            cached.config.center.key == 'j_losted_welder') then
            return cached
        end
        LOSTEDMOD.vars.active_welder_cache_dirty = true
    end

    LOSTEDMOD.vars.active_welder = nil
    if not (G and G.jokers and G.jokers.cards) then return nil end
    for _, joker in ipairs(G.jokers.cards) do
        if not joker.debuff and joker.added_to_deck and
            joker.config and joker.config.center and
            joker.config.center.key == 'j_losted_welder' and joker.ability and
            joker.ability.extra and joker.ability.extra.steel_xmult then
            LOSTEDMOD.vars.active_welder = joker
            LOSTEDMOD.vars.active_welder_cache_dirty = false
            return joker
        end
    end
    LOSTEDMOD.vars.active_welder_cache_dirty = false
end

if not LOSTEDMOD.welder_get_chip_h_x_mult_wrapped then
    local losted_welder_get_chip_h_x_mult_ref = Card.get_chip_h_x_mult
    function Card:get_chip_h_x_mult(...)
        local welder = get_active_welder()
        if welder and self and self.ability and SMODS.has_enhancement(self, 'm_steel') then
            return SMODS.multiplicative_stacking(
                welder.ability.extra.steel_xmult,
                (not self.ability.extra_enhancement and self.ability.perma_h_x_mult) or 0
            )
        end
        return losted_welder_get_chip_h_x_mult_ref(self, ...)
    end
    LOSTEDMOD.welder_get_chip_h_x_mult_wrapped = true
end

local jokerInfo = {
    key = "welder",
    pos = LOSTEDMOD.funcs.coordinate(7),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    config = {
        extra = {
            steel_xmult = 2.5,
            unlock_req = 10
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_steel
        return {
            vars = {card.ability.extra.steel_xmult}
        }
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {
            vars = {self.config.extra.unlock_req, localize { type = 'name_text', key = 'm_steel', set = 'Enhanced' }},
        }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'modify_deck' then
            local count = 0
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if SMODS.has_enhancement(playing_card, 'm_steel') then count = count + 1 end
                if count >= self.config.extra.unlock_req then
                    return true
                end
            end
        end
        return false
    end
}

return jokerInfo
