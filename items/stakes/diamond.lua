local stakeInfo = {
    key = 'diamond',
    applied_stakes = {'gold'},
    prefix_config = {above_stake = {mod = false}, applied_stakes = {mod = false}},
    pos = LOSTEDMOD.funcs.coordinate(2),
    sticker_pos = LOSTEDMOD.funcs.coordinate(2),
    atlas = 'losted_stakes',
    sticker_atlas = 'losted_stickers',
    colour = HEX('24CDC0'), 
    modifiers = function()
        G.GAME.win_ante = G.GAME.win_ante * 1.25
    end,    
    shader = 'shine',
    shiny = true
}

return stakeInfo
