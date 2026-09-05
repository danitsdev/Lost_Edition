-- Asset registration for Lost Edition mod

SMODS.Atlas {
		key = "balatro",
		path = "Logo.png",
		px = 333,
		py = 216,
		prefix_config = { key = false }
	}

SMODS.Atlas({
    key = "losted_modicon",
    path = "losted_icon.png",
    px = 65,
    py = 65
})

-- Atlas definitions
SMODS.Atlas{
    key = 'losted_jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'losted_jimbo_dance',
    path = 'Jimbo_dance.png',
    px = 71,
    py = 95,
}

SMODS.Atlas{
    key = 'losted_tarots',
    path = 'Tarots.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'losted_enhancements',
    path = 'Enhancements.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'losted_vouchers',
    path = 'Vouchers.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'losted_backs',
    path = 'Backs.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'losted_blinds',
    path = 'Blinds.png',
    px = 34,
    py = 34,
    frames = 21, 
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'losted_tags',
    path = 'Tags.png',
    px = 34,
    py = 34,
}

SMODS.Atlas{
    key = 'losted_stakes',
    path = 'Stakes.png',
    px = 29,
    py = 29,
}

SMODS.Atlas{
    key = 'losted_stickers',
    path = 'Stickers.png',
    px = 71,
    py = 95,
}

-- Collab deck skins
local collabs = {
    -- SPADES
    {
        id = 'collab_RE4',
        name = 'Resident Evil 4',
        artist = 'Click No Paulo',
        suits = { 'Spades' },
        files = { 'collabs/collab_RE4_spades_lc.png', 'collabs/collab_RE4_spades_hc.png' }
    },
    {
        id = 'collab_HK',
        name = 'Hollow Knight',
        artist = 'Click No Paulo',
        suits = { 'Spades' },
        files = { 'collabs/collab_HK_spades_lc.png', 'collabs/collab_HK_spades_hc.png' }
    },
        {
        id = 'collab_UN',
        name = 'Undertale',
        artist = 'Roger',
        suits = { 'Spades' },
        files = { 'collabs/collab_UN_spades_lc.png', 'collabs/collab_UN_spades_hc.png' }
    },
        {
        id = 'collab_OB',
        name = 'ORI',
        artist = 'Wellyson',
        suits = { 'Spades' },
        files = { 'collabs/collab_OB_spades_lc.png', 'collabs/collab_OB_spades_hc.png' }
    },
    {
        id = 'collab_BS',
        name = 'Brawl Stars',
        artist = 'Xosé',
        suits = { 'Spades' },
        files = { 'collabs/collab_BS_spades_lc.png', 'collabs/collab_BS_spades_hc.png' }
    },
    
    -- HEARTS
    {
        id = 'collab_DC',
        name = 'Dead Cells',
        artist = 'Click No Paulo',
        suits = { 'Hearts' },
        files = { 'collabs/collab_DC_hearts_lc.png', 'collabs/collab_DC_hearts_hc.png' }
    },
    {
        id = 'collab_HD',
        name = 'Hades',
        artist = 'Click No Paulo',
        suits = { 'Hearts' },
        files = { 'collabs/collab_HD_hearts_lc.png', 'collabs/collab_HD_hearts_hc.png' }
    },
    {
        id = 'collab_DM',
        name = 'Devil May Cry',
        artist = 'Click No Paulo',
        suits = { 'Hearts' },
        files = { 'collabs/collab_DM_hearts_lc.png', 'collabs/collab_DM_hearts_hc.png' }
    },
    {
        id = 'collab_DK',
        name = 'Donkey Kong',
        artist = 'Wellyson',
        suits = { 'Hearts' },
        files = { 'collabs/collab_DK_hearts_lc.png', 'collabs/collab_DK_hearts_hc.png' }
    },
    {
        id = 'collab_PZ',
        name = 'Plants vs Zombies',
        artist = 'Wellyson',
        suits = { 'Hearts' },
        files = { 'collabs/collab_PZ_hearts_lc.png', 'collabs/collab_PZ_hearts_hc.png' }
    },
    
    -- CLUBS
    {
        id = 'collab_KZ',
        name = 'Katana Zero',
        artist = 'Click No Paulo',
        suits = { 'Clubs' },
        files = { 'collabs/collab_KZ_clubs_lc.png', 'collabs/collab_KZ_clubs_hc.png' }
    },
    {
        id = 'collab_IS',
        name = 'Inscryption',
        artist = 'Click No Paulo',
        suits = { 'Clubs' },
        files = { 'collabs/collab_IS_clubs_lc.png', 'collabs/collab_IS_clubs_hc.png' }
    },
    {
        id = 'collab_CH',
        name = 'Cuphead',
        artist = 'Wellyson',
        suits = { 'Clubs' },
        files = { 'collabs/collab_CH_clubs_lc.png', 'collabs/collab_CH_clubs_hc.png' }
    },
    {
        id = 'collab_SF',
        name = 'Street Fighter',
        artist = 'Wellyson',
        suits = { 'Clubs' },
        files = { 'collabs/collab_SF_clubs_lc.png', 'collabs/collab_SF_clubs_hc.png' }
    },
    {
        id = 'collab_VL',
        name = 'Valorant',
        artist = 'Xosé',
        suits = { 'Clubs' },
        files = { 'collabs/collab_VL_clubs_lc.png', 'collabs/collab_VL_clubs_hc.png' }
    },
    
    -- DIAMONDS
    {
        id = 'collab_9K',
        name = '9 Kings',
        artist = 'Click No Paulo',
        suits = { 'Diamonds' },
        files = { 'collabs/collab_9K_diamonds_lc.png', 'collabs/collab_9K_diamonds_hc.png' }
    },
    {
        id = 'collab_ER',
        name = 'Elden Ring',
        artist = 'Click No Paulo',
        suits = { 'Diamonds' },
        files = { 'collabs/collab_ER_diamonds_lc.png', 'collabs/collab_ER_diamonds_hc.png' }
    },
    {
        id = 'collab_MC',
        name = 'Minecraft',
        artist = 'Henry',
        suits = { 'Diamonds' },
        files = { 'collabs/collab_MC_diamonds_lc.png', 'collabs/collab_MC_diamonds_hc.png' }
    },
    {
        id = 'collab_MM',
        name = 'Mulllet Madjack',
        artist = 'Timba',
        suits = { 'Diamonds' },
        files = { 'collabs/collab_MM_diamonds_lc.png', 'collabs/collab_MM_diamonds_hc.png' }
    },
    {
        id = 'collab_CB',
        name = 'Crash Bandicoot',
        artist = 'Wellyson',
        suits = { 'Diamonds' },
        files = { 'collabs/collab_CB_diamonds_lc.png', 'collabs/collab_CB_diamonds_hc.png' }
    },
}

for _, data in ipairs(collabs) do
    for _, suit in ipairs(data.suits) do
        local key = data.id .. "_" .. suit:lower()

        -- Default for collabs - just face cards
        local ranks = { 'Jack', 'Queen', 'King' }
        local display_ranks = { 'King', 'Queen', 'Jack' }
        local pos_style = 'ranks'

        local atlas_lc = SMODS.Atlas {
            key = key .. '_lc',
            path = data.files[1],
            px = 71,
            py = 95
        }

        local atlas_hc = SMODS.Atlas {
            key = key .. '_hc',
            path = data.files[2],
            px = 71,
            py = 95
        }

        SMODS.DeckSkin {
            key = key,
            suit = suit,
            loc_txt = {
                ['en-us'] = data.name,
                ['pt-br'] = data.name
            },
            artist = data.artist,
            generate_ds_card_ui = function(card, deckskin, palette, info_queue, desc_nodes, specific_vars, full_UI_table)
                if card.base.value == "Jack" or card.base.value == "Queen" or card.base.value == "King" then
                    localize{type = 'other', key = 'artist', nodes = desc_nodes, vars = {}}
                    localize{type = 'other', key = 'artist_credit', nodes = desc_nodes, vars = { data.artist }}
                end
            end,
            has_ds_card_ui = function(card, deckskin, palette)
                return card.base.value == "Jack" or card.base.value == "Queen" or card.base.value == "King"
            end,
            palettes = {
                {
                    key = 'lc',
                    ranks = ranks,
                    display_ranks = display_ranks,
                    pos_style = pos_style,
                    atlas = atlas_lc.key
                },
                {
                    key = 'hc',
                    ranks = ranks,
                    display_ranks = display_ranks,
                    pos_style = pos_style,
                    atlas = atlas_hc.key,
                    hc_default = true,
                    colour = data.id == 'collab_MC' and HEX("2aa791") or nil
                }
            }
        }
    end
end

-- Shader definitions
SMODS.Shader{
    key = 'quantum',
    path = 'quantum.fs'
}

SMODS.Shader{
    key = 'plasma',
    path = 'plasma.fs'
}

SMODS.Sound({
    key = "losted_music1",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted") and 10 or false
    end,
    vol = 0.6,
    pitch = 1,
})

SMODS.Sound({
    key = "losted_music2",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
    end,
    vol = 0.55,
    pitch = 1.05,
})

SMODS.Sound({
    key = "losted_music3",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
    end,
    vol = 0.5,
    pitch = 0.95,
})

SMODS.Sound({
    key = "losted_music4",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.shop and not G.shop.REMOVED) and 11 or false
    end,
    vol = 0.5,
    pitch = 0.92,
})

SMODS.Sound({
    key = "losted_music5",
    path = "losted_music.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == "losted" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
    end,
    vol = 0.7,
    pitch = 1.08,
})

SMODS.Sound{
    key = 'whistle',
    path = 'whistle.ogg'
}

SMODS.Sound{
    key = 'shot',
    path = 'shot.ogg'
}

SMODS.Sound{
    key = 'laugh',
    path = 'laugh.ogg'
}

SMODS.Sound{
    key = 'why_so_serious',
    path = 'why_so_serious.ogg'
}

SMODS.Sound{
    key = 'obsidian',
    path = 'obsidian.ogg'
}

SMODS.Sound{
    key = 'pow_sound',
    path = 'pow_sound.ogg'
}

SMODS.Sound{
    key = 'x_chips',
    path = 'x_chips.ogg'
}

SMODS.Sound{
    key = 'eating',
    path = 'eating.ogg'
}

SMODS.Sound{
    key = 'fart',
    path = 'fart.ogg'
}

SMODS.Sound{
    key = 'chicken',
    path = 'chicken.ogg'
}

SMODS.Sound{
    key = 'turntable',
    path = 'turntable.ogg'
}

SMODS.Sound{
    key = 'explosion',
    path = 'explosion.ogg'
}

SMODS.Sound{
    key = 'horn',
    path = 'horn.ogg'
}

SMODS.Sound{
    key = 'patati_patata',
    path = 'patati_patata.ogg'
}

SMODS.Sound{
    key = 'risadinha',
    path = 'risadinha.ogg'
}
    
sendDebugMessage("[Lost Edition] Assets module loaded successfully")
