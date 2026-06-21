-- Initialize music selection setting
if not G.SETTINGS.music_selection then
    G.SETTINGS.music_selection = "losted"
end

-- Main menu/general gameplay music
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music1",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted") and 10 or false
    end,
})

-- Booster pack opening music
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music2",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
    end,
})

-- Celestial pack music
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music3",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
    end,
})

-- Shop music
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music4",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.shop and not G.shop.REMOVED) and 11 or false
    end,
})

-- Boss blind music
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music5",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
    end,
})

-- Music selector function
G.FUNCS.change_music = function(args)
    G.ARGS.music_vals = G.ARGS.music_vals or { "losted", "balatro" }
    G.SETTINGS.QUEUED_CHANGE.music_change = G.ARGS.music_vals[args.to_key]
    G.SETTINGS.music_selection = G.ARGS.music_vals[args.to_key]
    G:save_settings()
end
