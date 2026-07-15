local main_menuRef = Game.main_menu
function Game:main_menu(change_context)
	main_menuRef(self, change_context)

    G.FUNCS.initPostSplash()
    if LOSTEDMOD.funcs.wrap_boss_rush_reroll then
        LOSTEDMOD.funcs.wrap_boss_rush_reroll()
    end

	local splash_args = {mid_flash = change_context == 'splash' and 1.6 or 0.}
	ease_value(splash_args, 'mid_flash', -(change_context == 'splash' and 1.6 or 0), nil, nil, nil, 4)

	G.SPLASH_BACK:define_draw_steps({{
		 shader = 'splash',
		 send = {
			{name = 'time', ref_table = G.TIMERS, ref_value = 'REAL'},
            {name = 'vort_speed', val = 0.4},
            {name = 'colour_1', ref_table = G.C, ref_value = 'LOSTED_OUTER'},
            {name = 'colour_2', ref_table = G.C, ref_value = 'LOSTED_INNER'},
            {name = 'mid_flash', ref_table = splash_args, ref_value = 'mid_flash'},
            {name = 'vort_offset', val = 0},
		 }}})
end
return true
