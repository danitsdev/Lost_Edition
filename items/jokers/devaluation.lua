function LOSTEDMOD.funcs.devaluation_active()
    return G.jokers and SMODS.find_card and next(SMODS.find_card('j_losted_devaluation')) ~= nil
end

function Card:losted_is_rank(rank)
    local id = self:get_id()
    if id == nil or rank == nil then return false end
    if id == rank then return true end
    return type(id) == 'number' and type(rank) == 'number'
        and id >= 11 and id <= 13
        and rank >= 11 and rank <= 13
        and LOSTEDMOD.funcs.devaluation_active()
end

local jokerInfo = {
    key = "devaluation",
    pos = LOSTEDMOD.funcs.coordinate(89),
    atlas = 'losted_jokers',
    rarity = 3,
    cost = 8,
    unlocked = true,
    blueprint_compat = false,
}

return jokerInfo
