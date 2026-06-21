local function starts_with(str, start)
    return string.sub(str, 1, #start) == start
end

local challengeInfo = {
    key = 'only_jokers',
    rules = {
        custom = {
            { id = "only_jokers" },
        },
		modifiers = {
            { id = 'consumable_slots', value = 0 },
        },
	},
    deck = {
        type = "Challenge Deck",
    },
    restrictions = {
         banned_cards = (function()
            local banned_ids = {}
            for k, v in pairs(G.P_CENTERS) do
                if starts_with(k, 'p_') and not starts_with(k, 'p_buffoon_') then
                    table.insert(banned_ids, k)
                end
                if starts_with(k, 'v_') then
                    table.insert(banned_ids, k)
                end
            end
            table.insert(banned_ids, 'v_losted_negative_bias')
            table.insert(banned_ids, 'v_losted_negative_magnet')
            table.insert(banned_ids, 'v_losted_stapler')
            table.insert(banned_ids, 'v_losted_staple_gun')
            return {
                { id = 'j_astronomer' },
                { id = 'j_constellation' },
                { id = 'j_satellite' },
                { id = 'j_8_ball' },
                { id = 'j_cartomancer' },
                { id = 'j_fortune_teller' },
                { id = 'j_hallucination' },
                { id = 'j_superposition' },
                { id = 'j_vagabond' },
                { id = 'j_seance' },
                { id = 'j_sixth_sense' },
                { id = 'j_perkeo' },
                { id = 'j_losted_roland' },
                { id = 'j_losted_hoarding_joker' },
                { id = 'j_losted_magician' },
                { id = 'j_losted_seal_stamp' },
                { id = 'j_losted_spirit_box' },
                { id = 'j_losted_miner' },
                { id = 'j_losted_big_bang' },
                { id = 'j_losted_vip_pass' },
                { id = 'p_standard_normal_1' },
                { id = 'p_arcana_normal_1' },
                { id = 'p_celestial_normal_1' },
                { id = 'p_spectral_normal_1' },
                { id = 'v_blank' },
                { id = 'j_losted_invisible', ids = banned_ids }
            }
        end)(),
        banned_tags = {
            { id = 'tag_charm' },
            { id = 'tag_coupon' },
            { id = 'tag_ethereal' },
            { id = 'tag_meteor' },
            { id = 'tag_standard' },
        },
    },
}

return challengeInfo
