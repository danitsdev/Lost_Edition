# Changelog

## 1.2.2
- Fixed Wild Card suit-debuff immunity under Steamodded (replaced legacy Lovely patch with native `debuff_card` hook)
- Fixed free vouchers (`$0`, e.g. via VIP Pass) not being redeemable while in debt
- Fixed Devaluation not applying to vanilla royal-rank Jokers (Baron, Shoot the Moon, Hit the Road, Triboulet, Mail-In Rebate, The Idol) and updated Lost Edition rank-matching Jokers (Mitosis, Triquetra, Turntable, The Joker, Roulette) to use `Card:losted_is_rank`
- Fixed All In subtracting hands multiple times when copied by Blueprint, and adjusted rarity to Uncommon (`$6`)
- Adjusted Devaluation and Roulette rarity to Rare (`$8`)
- Changed Eclipse Deck to trigger every 3 Antes (resolving interaction with Medieval Deck)
- Fixed Neapolitan Deck + Plasma Deck final scoring step and added a compact in-run Full Deck breakdown of the 3 active decks
- Clarified Hybrid Deck and Big Potato descriptions across supported languages

## 1.2.1
- Fixed Diamond, Toast, and Stellar enhancements not triggering or persisting properly when held as the secondary enhancement on the Hybrid Deck

## 1.2.0
- New Jokers: All In, Big Potato (Batatão), Devaluation (Desvalorização), Medusa, Roulette (Roleta)
- New Spectral card: Flux
- New Decks: Neapolitan (mixes 3 random vanilla/Lost Edition decks with a deck pool selector; automatically skipped if Balatro Multiplayer is installed), Eclipse, Hybrid (cards can hold 2 Enhancements)
- Added JokerDisplay support for all new Jokers
- Medieval Deck and Jimbo Hood now detect decks active via Neapolitan Deck
- Added Thunderstore package metadata and publish workflow
