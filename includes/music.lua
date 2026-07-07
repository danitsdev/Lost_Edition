-- Initialize music selection setting
if not G.SETTINGS.music_selection then
    G.SETTINGS.music_selection = "losted"
end

-- One Lost Edition music source is enough: the previous implementation
-- registered five tracks that all streamed the same 10 MB file and were
-- queried every frame by SMODS.Sound:get_current_music().
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "losted_music",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted") and 11 or false
    end,
})

-- Music selector function
G.FUNCS.change_music = function(args)
    G.ARGS.music_vals = G.ARGS.music_vals or { "losted", "balatro" }
    G.SETTINGS.QUEUED_CHANGE.music_change = G.ARGS.music_vals[args.to_key]
    G.SETTINGS.music_selection = G.ARGS.music_vals[args.to_key]
    G:save_settings()
end
