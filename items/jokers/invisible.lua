local jokerInfo = {
    key = "invisible",
    config = {},
    rarity = 4,
    cost = 0, 
    pos = LOSTEDMOD.funcs.coordinate(150),
    atlas = 'losted_jokers',
    pixel_size = { h = 1 / 1 },
    
    no_mod_badges = true,
    no_doe = true,
    unlocked = true,
    no_collection = true,

    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,

    in_pool = function(self) 
        return false
    end
}

return jokerInfo