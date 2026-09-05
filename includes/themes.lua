ease_background_colour{ new_colour = G.C.LOSTED_INNER, special_colour = G.C.LOSTED_OUTER }
if G.GAME and G.GAME.blind and G.GAME.blind.change_colour then
    G.GAME.blind:change_colour(G.C.LOSTED_BLIND)
end
G.C.BLIND.Small = G.C.LOSTED_BLIND
G.C.BLIND.Big = G.C.LOSTED_BLIND
G.C.BLIND.won = G.C.LOSTED_WON

if G.SANDBOX then
    if G.SANDBOX.col1 then G.SANDBOX.col1 = G.C.LOSTED_OUTER end
    if G.SANDBOX.col2 then G.SANDBOX.col2 = G.C.LOSTED_INNER end
end

return true
