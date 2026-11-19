function LOSTEDMOD.funcs.devaluation_active()
    return G.jokers and SMODS.find_card and next(SMODS.find_card('j_losted_devaluation')) ~= nil
end

local function is_royal_id(id)
    return type(id) == 'number' and id >= 11 and id <= 13
end
LOSTEDMOD.funcs.is_royal_id = is_royal_id

function Card:losted_is_rank(rank)
    local id = self:get_id()
    if id == rank then return true end
    return is_royal_id(id) and is_royal_id(rank) and LOSTEDMOD.funcs.devaluation_active()
end

local jokerInfo = {
    key = "devaluation",
    pos = LOSTEDMOD.funcs.coordinate(89),
    atlas = 'losted_jokers',
    rarity = 2,
    cost = 6,
    unlocked = true,
    blueprint_compat = false,
}

return jokerInfo
