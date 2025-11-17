--[[-----------------------------------------------------------------------------------
    
    Black Mage Lua by Fonz

        This Lua file has been created and modified for use on HorizonXI
        I use custom keybinds (in a comment at the bottom)

--]]-----------------------------------------------------------------------------------

--[[-----------------------------------------------------------------------------------
    Equipsets
--]]-----------------------------------------------------------------------------------
local profile = {};
local sets = {
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard
            Refresh: 1
            MP: 231
            PDT: -23%
            MDT: -3%
            MDB: 2
            DEF: 130
            Emnity: -10
    --]]-----------------------------------------------------------------------------------
    Idle_Standard = {
        Main = 'Earth Staff', -- PDT -20%
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Wizard\'s Petasos', -- MP 25, DEF 20
        Neck = 'Uggalepih Pendant', -- MP 20
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Tamas Ring', -- MP 30, Emnity -5
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- MP 48, DEF 3
        Legs = 'Sorcerer\'s Tonban', -- MP 13, DEF 30, Emnity -2
        Feet = 'Rostrum Pumps', -- MP 30, DEF 20
    },
	--[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 60 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_60 = {
        Main = 'Earth Staff', -- PDT -20%
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Wizard\'s Petasos', -- MP 25, DEF 20
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Wizard\'s Coat',
        Hands = 'Wizard\'s Gloves', -- Elem 15
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Skulker\'s Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wizard\'s Tonban', -- MP 14
        Feet = 'Wizard\'s Sabots', -- SpellInt 20%, DEF 11
    },
	    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 51 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_51 = {
        Main = 'Earth Staff', -- PDT -20%
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe', --
        Hands = 'Seer\'s Mitts +1', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Skulker\'s Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wonder Braccae', --
        Feet = 'Seer\'s Pumps', --
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 50 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_50 = {
        Main = 'Solid Wand', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
        Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe', --
        Hands = 'Seer\'s Mitts +1', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Skulker\'s Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wonder Braccae', --
        Feet = 'Seer\'s Pumps', --
    },
	--[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 40 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_40 = {
        Main = 'Solid Wand', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
        Head = 'Seer\'s Crown +1', --
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe', --
        Hands = 'Seer\'s Mitts +1', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Black Cape +1', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wonder Braccae', --
        Feet = 'Seer\'s Pumps', --
    },
	--[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 30 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_30 = {
        Main = 'Yew Wand +1', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
        -- Head = 'Seer\'s Crown +1', --
        Neck = 'Black Neckerchief', --
        Ear1 = 'Reraise Earring', -- PEVA 2
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Black Tunic', --
        Hands = 'Seer\'s Mitts +1', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Astral Ring', -- MP 25
        Back = 'Cotton Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Seer\'s Slacks +1', --
        Feet = 'Seer\'s Pumps', --
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 20 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_20 = {
        Main = 'Yew Wand +1', -- 
        Sub  = 'She-Slime Shield', -- 
        Ammo = 'Fortune Egg', -- 
        -- Head = '', --
        Neck = 'Black Neckerchief', --
        -- Ear1 = '', -- 
        -- Ear2 = '', -- 
        Body = 'Black Tunic', --
        Hands = 'Scentless Armlets', --
        Ring1 = 'Eremite\'s Ring', -- 
        Ring2 = 'Astral Ring', -- MP 25
        Back = 'Cotton Cape', --
        Waist = 'Friar\'s Rope', --
        Legs = 'Baron\'s Slops', --
        Feet = 'Light Soleas', --
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Max MP
            MP: 322
    --]]-----------------------------------------------------------------------------------
    Idle_MP = {
        Main = 'Earth Staff',
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Faerie Hairpin', -- MP 55
        Neck = 'Uggalepih Pendant', -- MP 20
        Ear1 = 'Loquac. Earring', -- MP 30
        Ear2 = 'Geist Earring', -- MP 5
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Zenith Mitts', -- MP 50
        Ring1 = 'Tamas Ring', -- MP 30
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- MP 48
        Legs = 'Wizard\'s Tonban', -- MP 14
        Feet = 'Rostrum Pumps', -- MP 30
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle PDT
            PDT: -23%
            DEF: 148
            HP: 7
            Emnity: -14
            PEVA: 12
            VIT: 3
    --]]-----------------------------------------------------------------------------------
    Idle_PDT = {
        Main = 'Earth Staff', -- PDT -20%
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Igqira Tiara', -- DEF 20, PEVA 10
        Neck = 'Black Neckerchief', -- DEF 2
        Ear1 = 'Reraise Earring', -- PEVA 2
        Ear2 = 'Reraise Earring', -- PEVA 2
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Bomb Queen Ring', -- HP 75
        Ring2 = 'Kshama Ring No.4', -- DEF 3, VIT 3
        Back = 'Cheviot Cape', -- PDT -5%, DEF 5
        Waist = 'Sorcerer\'s Belt', -- DEF 4, HP 20
        Legs = 'Wonder Braccae', -- HP 21, DEF 12
        Feet = 'Sorcerer\'s Sabots', -- DEF 14, Emnity -1
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle MDT
            MDT:
            MEVA:
            INT:
    --]]-----------------------------------------------------------------------------------
    Idle_MDT = {
        Main = 'Earth Staff',
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Igqira Tiara', -- DEF 20, PEVA 10
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Merman\'s Earring', -- MDT -2%
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Bomb Queen Ring', -- HP 75
        Ring2 = 'Merman\'s Ring', -- MDT -4%
        Back = 'Hexerei Cape', -- DT -3%, DEF 5
        Waist = 'Sorcerer\'s Belt', -- DEF 4. HP 20
        Legs = 'Mahatma Slops', -- DEF 39, Emnity -4
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle MDT Wind
            Wind Res:
            MDT:
            MEVA:
            INT:
    --]]-----------------------------------------------------------------------------------
    Idle_MDT_Wind = {
        Main = 'Aquilo\'s Staff', -- Wind +20, INT +5
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Blue Ribbon', -- Wind +6
        Neck = 'Elemental Torque', -- Wind +5
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2, MND 2
        Body = 'Black Cotehardie', -- Wind +3, INT +2
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Bomb Queen Ring', -- HP 75
        Ring2 = 'Merman\'s Ring', -- MDT -4%
        Back = 'Blue Cape', -- Wind +5
        Waist = 'Ice Belt', -- Wind +20
        Legs = 'Mahatma Slops', -- INT +7
        Feet = 'Rostrum Pumps', -- INT +3
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle MDT Lightning
            Lightning Res:
            MDT: -3%
            MEVA:
            INT:
    --]]-----------------------------------------------------------------------------------
    Idle_MDT_Lightning = {
        Main = 'Earth Staff', -- Lightning +15
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Wizard\'s Petasos', -- Lightning +10
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2, MND 2
        Body = 'Black Cotehardie', -- Lightning +3, INT +2
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Bomb Queen Ring', -- HP 75
        Ring2 = 'Merman\'s Ring', -- MDT -4%
        Back = 'Hexerei Cape', -- DT -3%
        Waist = 'Earth Belt', -- Lightning +20
        Legs = 'Mahatma Slops', -- INT +8
        Feet = 'Rostrum Pumps', -- INT +3
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Emnity
            Emnity: -22
            PDT: -23%
            MDT: -3%
            DEF: 134
    --]]-----------------------------------------------------------------------------------
    Idle_Emnity = {
        Main = 'Earth Staff', -- PDT -20%
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Wizard\'s Petasos', -- Emnity -4, DEF 20
        Neck = 'Uggalepih Pendant', -- MP 20
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2, MND 2
        Body = 'Errant Hpl.', -- Emnity -3, DEF 42
        Hands = 'Src. Gloves +1', -- Emnity -3, DEF 16
        Ring1 = 'Tamas Ring', -- Emnity -5
        Ring2 = 'Kshama Ring No.9',
        Back = 'Hexerei Cape', -- DT -3%
        Waist = 'Penitent\'s Rope', -- Emnity -3, DEF 4
        Legs = 'Mahatma Slops', -- Emnity -4, DEF 39
        Feet = 'Sorcerer\'s Sabots', -- Emnity -1, DEF 14
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Engaged
            EVA: 
    --]]-----------------------------------------------------------------------------------
    Engaged = {
        -- Main = 'Ivory Sickle +1',
        Ammo = 'Fenrir\'s Stone', -- HP 30 or PEVA 10
        Head = 'Igqira Tiara', -- DEF 20, PEVA 10
        Neck = 'Black Neckerchief', -- DEF 2
        Ear1 = 'Abyssal Earring', -- Scythe +5
        Ear2 = 'Static Earring', -- MDB 2, MND 2
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Tamas Ring', --
        Ring2 = 'Kshama Ring No.2', -- DEX 3, Acc 2
        Back = 'Hexerei Cape', -- DT -3%, DEF 5
        Waist = 'Sorcerer\'s Belt', -- DEF 4, HP 20
        Legs = 'Wizard\'s Tonban', -- DEF 27, EVA 5
        Feet = 'Wizard\'s Sabots', -- SpellInt 20%, DEF 11
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Elemental Standard
            MAB: 23
            Magic Accuracy: 0
            INT: 29
            Elemental Skill: 17
            Emnity: -11
            Conserve MP: 2
    --]]-----------------------------------------------------------------------------------
    Elemental_Standard = {
        Ammo = 'Sweet Sachet', -- INT 2
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Elemental Torque', -- Elem 7
        Ear1 = 'Novio Earring', -- MAB 7
        Ear2 = 'Moldavite Earring', -- MAB 5
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve MP 2
        Hands = 'Zenith Mitts', -- MAB 5
        Ring1 = 'Tamas Ring', -- INT 5, Emnity -3
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Merciful Cape', -- Elem 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops', -- INT 8, Emnity -4
        Feet = 'Rostrum Pumps', -- INT 3, Fast Cast
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Elemental Accuracy
            Magic Accuracy:
            Elemental Skill:
            INT:
            MAB:      
    --]]-----------------------------------------------------------------------------------
    Elemental_Accuracy = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Elemental Torque',
        Ear1 = 'Novio Earring', -- MAB 7
        Ear2 = 'Abyssal Earring',
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve 2
        Hands = 'Wizard\'s Gloves', -- Elem 15
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Merciful Cape', -- Elem 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Elemental Mid
            MAB:
            Magic Accuracy:
            INT:
            Elemental Skill:
    --]]-----------------------------------------------------------------------------------
    Elemental_Mid = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Elemental Torque',
        Ear1 = 'Novio Earring', -- MAB 7
        Ear2 = 'Moldavite Earring', -- MAB 5
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve 2
        Hands = 'Zenith Mitts', -- MAB 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Merciful Cape', -- Elem 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Elemental Potency
            MAB:
            Magic Accuracy:
            INT:
            Elemental Skill:
    --]]-----------------------------------------------------------------------------------
    Elemental_Potency = {
        Ammo = 'Sweet Sachet',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve 2
        Hands = 'Errant Cuffs', -- INT 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Rainbow Cape', --INT 3
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Elemental Emnity
            Emnity: 
            MAB:
            Magic Accuracy:
            INT:
            Elemental Skill:
    --]]-----------------------------------------------------------------------------------
    Elemental_Emnity = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Elemental Torque',
        Ear1 = 'Novio Earring', -- MAB 7
        Ear2 = 'Moldavite Earring', -- MAB 5
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve MP 2
        Hands = 'Wizard\'s Gloves', -- Elem 15
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Merciful Cape', -- Elem 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Errant Pigaches', -- Emn -2
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Dark
			Dark Skill:
            Magic Accuracy:
            INT:
    --]]-----------------------------------------------------------------------------------
    Dark = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Philomath Stole',
        Ear1 = 'Abyssal Earring',
        Ear2 = 'Morion Earring',
        Body = 'Errant Hpl.', -- INT 10
        Hands = 'Src. Gloves +1', -- Dark 12
        Ring1 = 'Kshama Ring No.5', -- INT 3
        Ring2 = 'Tamas Ring', --
        Back = 'Merciful Cape', -- Dark 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Wizard\'s Tonban',
        Feet = 'Rostrum Pumps',
    },
	--[[-----------------------------------------------------------------------------------
        Equipsets: Dark Essential
			Dark Skill:
            Magic Accuracy:
            INT:
    --]]-----------------------------------------------------------------------------------
    Dark_Essential = {
        Ear1 = 'Abyssal Earring', -- Dark 5
        Hands = 'Src. Gloves +1', -- Dark 12
        Back = 'Merciful Cape', -- Dark 5
        Legs = 'Wizard\'s Tonban', -- Dark 15
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Stun
            MAB:
            Magic Accuracy:
            INT:
            Dark Skill:
    --]]-----------------------------------------------------------------------------------
    Stun = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban', -- MAcc 5, Emnity -5
        Neck = 'Philomath Stole',
        Ear1 = 'Morion Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Errant Hpl.', -- INT 10
        Hands = 'Errant Cuffs', -- INT 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Merciful Cape', -- Dark 5
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Wizard\'s Tonban',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Healing
            TBD
    --]]-----------------------------------------------------------------------------------
    Healing = {
        Main = 'Light Staff', -- Cure Pot 10%
        -- Sub = 'Beater\'s Aspis',
        -- Ammo = 'Hedgehog Bomb',
        Head = 'Nashira Turban', -- Emnity -5
        Neck = 'Justice Badge', -- MND 3
        Ear1 = 'Geist Earring', -- MND 1
        Ear2 = 'Static Earring', -- MDB 2, MND 2
        Body = 'Duende Cotehardie', -- Conserve MP 4
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring', -- MND 5
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Mahatma Slops', -- MND 8
        Feet = 'Sorcerer\'s Sabots', -- Conserve MP 5, Emnity -1
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Enhancing
            TBD
    --]]-----------------------------------------------------------------------------------
    Enhancing = {
        -- Ammo = 'Hedgehog Bomb',
        -- Head = 'Faerie Hairpin',
        Neck = 'Enhancing Torque',
        -- Ear1 = 'Loquac. Earring',
        -- Ear2 = 'Magnetic Earring',
        Body = 'Errant Hpl.', -- MND 10
        -- Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        -- Ring2 = 'Ether Ring',
        Back = 'Merciful Cape', -- Enha 5
        Waist = 'Penitent\'s Rope', -- MND 5
        -- Legs = 'Mahatma Slops',
        -- Feet = 'Mahatma Pigaches',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Stoneskin - Capped at 380
    --]]-----------------------------------------------------------------------------------
    Stoneskin = {
        Main = 'Kirin\'s Pole', -- MND 10
        -- Sub = 'Beater\'s Aspis',
        -- Ammo = 'Hedgehog Bomb',
        Head = 'Faerie Hairpin', -- MP 55
        Neck = 'Stone Gorget', -- Enhances Stoneskin
        Ear1 = 'Loquac. Earring', -- MP 30
        Ear2 = 'Static Earring', -- MND 2
        Body = 'Errant Hpl.', -- MND 10
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring', -- MND 5
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Mahatma Slops', -- MND 8
        Feet = 'Errant Pigaches' -- MND 5
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Rest
            hMP:
            MP:
    --]]-----------------------------------------------------------------------------------
    Rest_hMP = {
        Main = 'Dark Staff',
        Ammo = 'Fortune Egg',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Relaxing Earring', -- hMP 2
        Ear2 = 'Boroka Earring', -- hMP 1
        Body = 'Errant Hpl.', -- hMP 5
        Hands = 'Src. Gloves +1', -- MP 24
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.9', -- MP 5
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- hMP 2 MP 48
        Legs = 'Baron\'s Slops',
        Feet = 'Rostrum Pumps',
    },
        --[[-----------------------------------------------------------------------------------
        Equipsets: Rest lv 50 cap
            hMP:
            MP:
    --]]-----------------------------------------------------------------------------------
    Rest_hMP_50 = {
        Main = 'Pilgrim\'s Wand', -- hMP 2
        Sub = 'Beater\'s Aspis',
        Ammo = 'Fortune Egg', -- MP +1%
        Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring', -- MP 5
        Ear2 = 'Boroka Earring', -- hMP 1
        Body = 'Seer\'s Tunic', -- hMP 1 MP 8
        Hands = 'Devotee\'s Mitts', -- MP 8
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.9', -- MP 5
        Back = 'Skulker\'s Cape',
        Waist = 'Friar\'s Rope', -- MP 5
        Legs = 'Baron\'s Slops', -- hMP 1
        Feet = 'Seer\'s Pumps', -- MP 4
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Rest Max MP
            MP: 
            hMP:
    --]]-----------------------------------------------------------------------------------
    Rest_MaxMP = {
        Main = 'Dark Staff',
        Ammo = 'Fortune Egg',
        Head = 'Faerie Hairpin', -- MP 55
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Relaxing Earring', -- hMP 2
        Ear2 = 'Boroka Earring', -- hMP 1
        Body = 'Sorcerer\'s Coat', -- Refresh 1, MP 12 DEF 41
        Hands = 'Zenith Mitts', -- MP 50
        Ring1 = 'Tamas Ring',
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- hMP 2 MP 48
        Legs = 'Wizard\'s Tonban',
        Feet = 'Rostrum Pumps',
	},
    --[[-----------------------------------------------------------------------------------
        Equipsets: Enfeebling MND
            Enfeebling Skill:
            MND: 
    --]]-----------------------------------------------------------------------------------
    Enfeeb_Mind = {
        -- Ammo = 'Hedgehog Bomb',
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring', -- MND 1
        Ear2 = 'Abyssal Earring',
        Body = 'Errant Hpl.', -- MND 10
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Mahatma Slops',
        Feet = 'Errant Pigaches', -- MND 5
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Enfeebling INT
            Enfeebling Skill: 
            INT: 
    --]]-----------------------------------------------------------------------------------
    Enfeeb_INT = {
        Ammo = 'Sweet Sachet',
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs', -- INT 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Max INT
            INT: 
    --]]-----------------------------------------------------------------------------------
    MaxINT = {
        Ammo = 'Sweet Sachet',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Morion Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Errant Hpl.', -- INT 10
        Hands = 'Errant Cuffs', -- INT 5
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5', -- INT 3
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt', -- INT 6
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Fast Cast
            Fast Cast: 
    --]]-----------------------------------------------------------------------------------
    FastCast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Conserve MP
            Conserve MP: 9
    --]]-----------------------------------------------------------------------------------
	ConserveMP = {
        -- Ammo = 'Sack of Dream Sand',
        -- Ear1 = 'Magnetic Earring',
        Body = 'Duende Cotehardie', -- Conserve MP 4
        -- Back = 'Maledictor\'s Shawl',
        -- Legs = 'Aries Subligar',
        Feet = 'Sorcerer\'s Sabots', -- Conserve MP 5
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: HP Down
            /RDM - HP: 772 Target: 586 (-186)
            /WHM - HP: 774 Target: 580 (-194)
            HP: -197
    --]]-----------------------------------------------------------------------------------
    HPDown = {
        Main = 'Ivory Sickle +1', -- HP -15
        -- Sub = 'Astral Aspis', -- HP -25
        Ammo = 'Sweet Sachet',
        Head = 'Faerie Hairpin', -- HP -20
        Neck = 'Checkered Scarf', -- HP -12
        Ear1 = 'Reraise Earring', --
        Ear2 = 'Reraise Earring', --
        Body = 'Black Cotehardie', -- HP -25
        Hands = 'Zenith Mitts', -- HP -50
        Ring1 = 'Astral Ring', -- HP -25
        Ring2 = 'Ether Ring', -- HP -30
        Back = 'Blue Cape', -- HP -15
        Waist = 'Penitent\'s Rope', -- HP -20
        Legs = 'Wizard\'s Tonban', -- MP 14
        Feet = 'Rostrum Pumps', -- HP -30
	},
    --[[-----------------------------------------------------------------------------------
        Equipsets: HELM
    --]]-----------------------------------------------------------------------------------
    Fishing = {
        Range = 'Lu Shang\'s F. Rod',
        Body = 'Angler\'s Tunica',
        Hands = 'Fsh. Gloves',
        Legs = 'Fisherman\'s Hose',
        Feet = 'Fisherman\'s Boots',
    },
    Cooking = {
        Head = 'Chef\'s Hat',
        Body = 'Culinarian\'s Apron',
    },
    Worker = {
        Body = 'Field Tunica',
        Hands = 'Worker Gloves',
        -- Legs = '',
        Feet = 'Worker Boots',
    },
    Chocobo = {
        Body = 'Choc. Jack Coat',
        Hands = 'Rider\'s Gloves',
        Legs = 'Rider\'s Hose',
        Feet = 'Rider\'s Boots',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Partial Gearset Pieces
    --]]-----------------------------------------------------------------------------------
    Sneak = {
        Feet = 'Dream Boots +1',
        Back = 'Skulker\'s Cape', 
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape',
    },
    MagicBurst = {
        Hands = 'Src. Gloves +1',
        Ear2 = 'Static Earring', -- MDB 2, MND 2, Magic Burst
    },
	Teleport = {
		Main = 'Treat Staff II',
		Head = 'Dream Hat +1',
		Body = 'Mandra. Suit',
		Ring2 = 'Tavnazian Ring'
	},
    BombQueenRing = {
        Ring1 = 'Bomb Queen Ring'
    }
};

--[[-----------------------------------------------------------------------------------
    Elemental Staves
--]]-----------------------------------------------------------------------------------
-- local ElementalStaff = {
--     ['Fire'] = 'Vulcan\'s Staff',
--     ['Earth'] = 'Earth Staff',
--     ['Water'] = 'Water Staff',
--     ['Wind'] = 'Wind Staff',
--     ['Ice'] = 'Aquilo\'s Staff',
--     ['Thunder'] = 'Jupiter\'s Staff',
--     ['Light'] = 'Light Staff',
--     ['Dark'] = 'Dark Staff'
-- };

--[[-----------------------------------------------------------------------------------
    Obis
--]]-----------------------------------------------------------------------------------
-- local ElementalObi = {
--     ['Fire'] = 'Karin Obi',
--     ['Earth'] = 'Dorin Obi',
--     ['Water'] = 'Suirin Obi',
--     ['Wind'] = 'Furin Obi',
--     ['Ice'] = 'Hyorin Obi',
--     ['Thunder'] = 'Rairin Obi',
--     ['Light'] = 'Korin Obi',
--     ['Dark'] = 'Anrin Obi'
-- };

--[[-----------------------------------------------------------------------------------
    Gearset Variables
        These arrays can be toggled, cycled through, or set, based on keybinds
--]]-----------------------------------------------------------------------------------
local Idle = {
	[1] = 'Standard',
	[2] = 'MP',
	[3] = 'PDT',
	[4] = 'MDT',
    [5] = 'MDT_Wind',
    [6] = 'MDT_Lightning'
}
local Elemental = {
	[1] = 'Standard',
	[2] = 'Potency',
	[3] = 'Accuracy',
	[4] = 'Mid',
    [5] = 'Emnity'
}
local SorcRing = {
	[1] = 'False',
	[2] = 'True',
}
local MagicBurst = {
	[1] = 'False',
	[2] = 'True',
}
local Helm = {
    [1] = 'Standard',
	[2] = 'Fishing',
	[3] = 'Cooking',
	[4] = 'Worker',
    [5] = 'Chocobo',
    [6] = 'Teleport'
}
local RestSet = {
	[1] = 'Rest_hMP',
	[2] = 'Rest_MaxMP',
}

--[[-----------------------------------------------------------------------------------
	Generic Extras
--]]-----------------------------------------------------------------------------------
conquest = gFunc.LoadFile('common\\Conquest.lua');
gcinclude = gFunc.LoadFile('common\\Generic.lua');

--[[-----------------------------------------------------------------------------------
	Current Stats
--]]-----------------------------------------------------------------------------------
local CurrentStatsRDM = {
	['HP'] = 812,
	['MP'] = 858,
};

local CurrentStatsWHM = {
	['HP'] = 794,
	['MP'] = 877,
};

local CurrentStatsTHF = {
	['HP'] = 812,
	['MP'] = 799,
};

local CurrentStatsBST = {
	['HP'] = 817,
	['MP'] = 799,
};

local CurrentStats = {};

local GearsetStats = {
	['PDT'] = {
		['HP'] = 146,
		['MP'] = 30
	},
	['Idle'] = {
		['HP'] = -42,
		['MP'] = 241
	},
	['MaxMP'] = {
		['HP'] = -130,
		['MP'] = 357
	}
};

--[[-----------------------------------------------------------------------------------
    Gearset Variable Defaults
--]]-----------------------------------------------------------------------------------
local Settings = {
	Idle = 1,
	Elemental = 1,
	SorcRing = 1,
	MagicBurst = 1,
    Helm = 1,
	RestSet = 1,
}

--[[-----------------------------------------------------------------------------------
    Spell Groupings
--]]-----------------------------------------------------------------------------------
-- local MndDebuffs = T{ 'Slow', 'Paralyze', 'Silence' };
-- local IntDebuffs = T{ 'Blind','Sleep', 'Sleep II', 'Sleepga', 'Sleepga II', 'Bind', 'Gravity', 'Dispel', 'Poison', 'Poison II' };
-- local ElementalDebuffs = T{ 'Burn', 'Choke', 'Shock', 'Rasp', 'Drown', 'Frost' };

--[[-----------------------------------------------------------------------------------
    Day to Element Table
--]]-----------------------------------------------------------------------------------
-- local DayElementTable = {
--     ['Firesday'] = 'Fire',
--     ['Earthsday'] = 'Earth',
--     ['Watersday'] = 'Water',
--     ['Windsday'] = 'Wind',
--     ['Iceday'] = 'Ice',
--     ['Lightningday'] = 'Thunder',
--     ['Lightsday'] = 'Light',
--     ['Darksday'] = 'Dark'
-- };

--[[-----------------------------------------------------------------------------------
    City Zones
--]]-----------------------------------------------------------------------------------
-- local CityZones = T{    'Lower Jeuno', 'Upper Jeuno', 'Ru\'Lude Gardens', 'Port Jeuno', 
--                         'Windurst Woods', 'Port Windurst', 'Windurst Waters', 'Windurst Walls', 'Heavens Tower',
--                         'Bastok Markets', 'Bastok Mines', 'Metalworks', 'Port Bastok',
--                         'Chateau d\'Oraguille', 'Northern San d\'Oria', 'Port San d\'Oria', 'Southern San d\'Oria' };

--[[-----------------------------------------------------------------------------------
    Weather/Day Check for Obi
        This function assigns a weight based on the day of the week and the weather
        You give this function a spell, and it returns the weight of that element
--]]-----------------------------------------------------------------------------------
-- function ObiCheck(spell)

--     local element = spell.Element;
--     local zone = gData.GetEnvironment();
--     local weight = 0;
    
--     --[[-----------------------------------------------------------------------------------
--         Obi: Table of Bad Elements for each day
--     --]]-----------------------------------------------------------------------------------
--     local badEle = {
--         ['Fire'] = 'Water',
--         ['Earth'] = 'Wind',
--         ['Water'] = 'Thunder',
--         ['Wind'] = 'Ice',
--         ['Ice'] = 'Fire',
--         ['Thunder'] = 'Earth',
--         ['Light'] = 'Dark',
--         ['Dark'] = 'Light'
--     };
    
--     --[[-----------------------------------------------------------------------------------
--         Obi: Update weight based on Day
--     --]]-----------------------------------------------------------------------------------
--     if (DayElementTable[zone.Day] == element) then
--         weight = weight + 1;
--     elseif (DayElementTable[zone.Day] == badEle[element]) then
--         weight = weight - 1;
--     end
    
--     --[[-----------------------------------------------------------------------------------
--         Obi: Update weight based on Weather
--     --]]-----------------------------------------------------------------------------------
--     if string.find(zone.Weather, element) then
--         if string.find(zone.Weather, 'x2') then
--             weight = weight + 2;
--         else
--             weight = weight + 1;
--         end
--     elseif string.find(zone.Weather, badEle[element]) then
--         if string.find(zone.Weather, 'x2') then
--             weight = weight - 2;
--         else
--             weight = weight - 1;
--         end
--     end    
    
--     return weight;
-- end

--[[-----------------------------------------------------------------------------------
    OnLoad
        Runs commands when job switched
--]]-----------------------------------------------------------------------------------
profile.OnLoad = function()
	local player = gData.GetPlayer();
	if (player.SubJob == 'RDM') then
		CurrentStats = CurrentStatsRDM;
		(function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
	elseif (player.SubJob == 'WHM') then
		CurrentStats = CurrentStatsWHM;
		(function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
	elseif (player.SubJob == 'THF') then
		CurrentStats = CurrentStatsTHF;
		(function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    elseif (player.SubJob == 'BST') then
		CurrentStats = CurrentStatsBST;
		(function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    else
        CurrentStats = CurrentStatsBST;
	end
end

--[[-----------------------------------------------------------------------------------
    HandleCommand
        Accepts arguments to update gearset variables
--]]-----------------------------------------------------------------------------------
profile.HandleCommand = function(args)

    local player = gData.GetPlayer();
	local environ= gData.GetEnvironment();
    
    --[[-----------------------------------------------------------------------------------
        HandleCommand: Each command sets the idle set
    --]]-----------------------------------------------------------------------------------
    if (args[1] == 'idle_standard') then
        Settings.Idle = 1;
        Settings.RestSet = 1;
		Settings.Helm = 1;
        gFunc.Message('Idle Standard and Rest: hMP');
        gFunc.Message('Zone: ' .. environ.Area);
    elseif (args[1] == 'idle_mp') then
        Settings.Idle = 2;
        gFunc.Message('Idle Max MP');
    elseif (args[1] == 'idle_pdt') then
        Settings.Idle = 3;
        gFunc.Message('Idle PDT');
    elseif (args[1] == 'idle_mdt') then
        Settings.Idle = 4;
        gFunc.Message('Idle MDT');
    elseif (args[1] == 'idle_mdt_wind') then
        Settings.Idle = 5;
        gFunc.Message('Idle MDT: Wind Res');
    elseif (args[1] == 'idle_mdt_lightning') then
        Settings.Idle = 6;
        gFunc.Message('Idle MDT: Lightning Res');
    end

    --[[-----------------------------------------------------------------------------------
        HandleCommand: Each command sets the rest set
            rest_mp sets rest set and idle set to max mp
    --]]-----------------------------------------------------------------------------------
    if (args[1] == 'rest_hmp') then
        Settings.RestSet = 1;
        gFunc.Message('Rest: hMP');
    elseif (args[1] == 'rest_mp') then
        Settings.RestSet = 2;
        Settings.Idle = 2;
        gFunc.Message('Rest + Idle: Max MP');
    end

    --[[-----------------------------------------------------------------------------------
        HandleCommand: Cycle Nuke Sets
    --]]-----------------------------------------------------------------------------------
	if (args[1] == 'nukes') then
		if (Settings.Elemental == 1) then
			Settings.Elemental = 2;
			gFunc.Message('Elemental Magic Set: Potency');
		elseif (Settings.Elemental == 2) then
			Settings.Elemental = 3;
			gFunc.Message('Elemental Magic Set: Accuracy');
		elseif (Settings.Elemental == 3) then
			Settings.Elemental = 4;
			gFunc.Message('Elemental Magic Set: Mid');
        elseif (Settings.Elemental == 4) then
			Settings.Elemental = 5;
			gFunc.Message('Elemental Magic Set: Emnity');
		else
			Settings.Elemental = 1;
			gFunc.Message('Elemental Magic Set: Standard');
		end
	end

    --[[-----------------------------------------------------------------------------------
        HandleCommand: Toggle Sorcerer's Ring
    --]]-----------------------------------------------------------------------------------
	if (args[1] == 'sorc') then
		if (Settings.SorcRing == 1) then
			Settings.SorcRing = 2;
			gFunc.Message('Sorcerer\'s Ring: Enabled');
		else
			Settings.SorcRing = 1;
			gFunc.Message('Sorcerer\'s Ring: Disabled');
		end
	end	

    --[[-----------------------------------------------------------------------------------
        HandleCommand: Toggle Magic Burst
    --]]-----------------------------------------------------------------------------------
	if (args[1] == 'mb') then
		if (Settings.MagicBurst == 1) then
			Settings.MagicBurst = 2;
			gFunc.Message('Magic Burst: True');
		else
			Settings.MagicBurst = 1;
			gFunc.Message('Magic Burst: False');
		end
	end	

    --[[-----------------------------------------------------------------------------------
        HandleCommand: Cycle HELM gearsets
    --]]-----------------------------------------------------------------------------------
    if (args[1] == 'helm') then
		if (Settings.Helm == 1) then
			Settings.Helm = 2;
			gFunc.Message('Helm Set: Fishing');
		elseif (Settings.Helm == 2) then
			Settings.Helm = 3;
			gFunc.Message('Helm Set: Cooking');
		elseif (Settings.Helm == 3) then
			gFunc.Message('Helm Set: Worker');
			Settings.Helm = 4;
        elseif (Settings.Helm == 4) then
			gFunc.Message('Helm Set: Chocobo');
			Settings.Helm = 5;
        elseif (Settings.Helm == 5) then
			gFunc.Message('Helm Set: Teleport');
			Settings.Helm = 6;
		else
			gFunc.Message('Helm Set: Standard');
			Settings.Helm = 1;
		end
	end

end

--[[-----------------------------------------------------------------------------------
    HandleDefault
        If HorizonMode is set to false, this command runs constantly
        If HorzionMode is set to true, this command triggers upon certain actions
--]]-----------------------------------------------------------------------------------
profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local environ= gData.GetEnvironment();

    --[[-----------------------------------------------------------------------------------
        HandleDefault:
            If resting, equip rest set based on RestSet variable
                Note: This requires an action to happen. I press NUMPAD6 after resting
            If one of the HELM variables are set, then equip the HELM set
            Otherwise, equip the Idle set
    --]]-----------------------------------------------------------------------------------
	if (player.Status == 'Resting') then
        if ((Settings.Helm == 1) and (player.MP > (CurrentStats.MP + GearsetStats.PDT.MP - 35))) then
			if (Settings.Idle == 1) then
				gFunc.EquipSet(sets.Idle_MP);
			else
            	gFunc.EquipSet('Idle_' .. Idle[Settings.Idle]);
			end
        elseif (player.MainJobSync <= 50) then
            gFunc.EquipSet(sets.Rest_hMP_50);
        else
		    gFunc.EquipSet(RestSet[Settings.RestSet]);
        end
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet('Engaged');
	else
		if (Settings.Helm == 1) then
			if (Settings.Idle == 1) then
				if (player.MainJobSync == 75) then
					if (player.MP >= (CurrentStats.MP + GearsetStats.Idle.MP - 35)) then
						gFunc.EquipSet(sets.Idle_MP);
						if (conquest:GetOutsideControl()) then
							gFunc.Equip('Neck', 'Rep.Gold Medal');
						elseif (environ.Time < 18.00 and environ.Time > 6.00) then
							gFunc.Equip('Neck', 'Fenrir\'s Torque');
						end
					elseif (player.MP >= (CurrentStats.MP + GearsetStats.PDT.MP - 35)) then
						gFunc.EquipSet(sets.Idle_Standard);
					else
						gFunc.EquipSet(sets.Idle_PDT);
					end
					if (environ.Time < 18.00 and environ.Time > 6.00) then
						gFunc.Equip('Ammo', 'Fenrir\'s Stone');
					end
				elseif (player.MainJobSync >= 60) then
					gFunc.EquipSet(sets.Idle_Standard_60);
				elseif (player.MainJobSync >= 51) then
					gFunc.EquipSet(sets.Idle_Standard_51);
				elseif (player.MainJobSync >= 50) then
					gFunc.EquipSet(sets.Idle_Standard_50);
				elseif (player.MainJobSync >= 40) then
					gFunc.EquipSet(sets.Idle_Standard_40);
				elseif (player.MainJobSync >= 30) then
					gFunc.EquipSet(sets.Idle_Standard_30);
				elseif (player.MainJobSync >= 20) then
					gFunc.EquipSet(sets.Idle_Standard_20);
				else
					gFunc.EquipSet(sets.Idle_Standard_20);
				end
			else
				gFunc.EquipSet('Idle_' .. Idle[Settings.Idle]);
			end

            if (gcinclude.CityZones:contains(environ.Area)) then
				gFunc.EquipSet(sets.Idle_MP);
				if (conquest:GetOutsideControl()) then
					gFunc.Equip('Neck', 'Rep.Gold Medal');
				elseif (environ.Time < 18.00 and environ.Time > 6.00) then
					gFunc.Equip('Neck', 'Fenrir\'s Torque');
				end
				if (player.IsMoving) then
					gFunc.Equip('Body', 'Ducal Aketon');
				end
			end

        elseif (Settings.Helm == 2) then
            gFunc.EquipSet(sets.Fishing);
            if (environ.Area == "Sea Serpent Grotto") then
                gFunc.Equip('Ammo','Shrimp Lure');
            elseif (environ.Area == "Ship bound for Mhaura") then
                gFunc.Equip('Ammo','Sinking Minnow');
            elseif (environ.Area == "Ship bound for Selbina") then
                gFunc.Equip('Ammo','Sinking Minnow');
            end
        elseif (Settings.Helm == 3) then
            gFunc.EquipSet(sets.Cooking);
        elseif (Settings.Helm == 4) then
            gFunc.EquipSet(sets.Worker);
        elseif (Settings.Helm == 5) then
            gFunc.EquipSet(sets.Chocobo);
        elseif (Settings.Helm == 6) then
            gFunc.EquipSet(sets.Teleport);
        else
            gFunc.EquipSet('Idle_' .. Idle[Settings.Idle]);
        end
	end

end

--[[-----------------------------------------------------------------------------------
    HandlePrecast
        Called at the beginning of every spell cast
        Equip Fast Cast set
--]]-----------------------------------------------------------------------------------
profile.HandlePrecast = function()
    local ElementalMagicSpells = T{'Fire', 'Firaga', 'Thunder', 'Thundaga', 'Blizzard', 'Blizzaga', 'Aero', 'Aeroga', 'Stone', 'Stonega', 'Water', 'Waterga', 'Flare', 'Freeze', 'Tornado', 'Quake', 'Burst', 'Flood'}
    local player = gData.GetPlayer()
    local action = gData.GetAction()
    local baseSpellName = action.Name:match('^(%a+)')

    local spell = gData.GetAction()
    local fastCastValue = 0.04
	if (player.SubJob == 'RDM') then
        fastCastValue = fastCastValue + 0.15 -- Fast Cast II Trait
    end
    local latency = 0.250 
    local minimumBuffer = 0.5
    local packetDelay = 0.4
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) + latency - minimumBuffer
    if (castDelay >= packetDelay) then
        gFunc.SetMidDelay(castDelay)
    end
    local castTimeSeconds = math.floor((spell.CastTime * (1 - fastCastValue)) / 1000)
    local castTimeDecimal = ((spell.CastTime * (1 - fastCastValue)) / 1000) % 1
    local formattedCastTime = string.format("%.2f", castTimeSeconds + castTimeDecimal)
    --AshitaCore:GetChatManager():QueueCommand(8, '/echo Cast Time: ' .. formattedCastTime .. ' seconds')
    if action.Skill == 'Elemental Magic' and ElementalMagicSpells:contains(baseSpellName) then
        if (player.HPP >= 76) and (Settings.SorcRing == 2) then
            gFunc.EquipSet(sets.HPDown)
        end
    end
	gFunc.EquipSet(sets.FastCast);
end

--[[-----------------------------------------------------------------------------------
    HandleMidcast
        Called slightly into casting a spell
--]]-----------------------------------------------------------------------------------
profile.HandleMidcast = function()
	local action = gData.GetAction();
	local player = gData.GetPlayer();
	local environ= gData.GetEnvironment();
	
    if ((player.MP <= 948) and (Settings.Idle == 2)) then
        Settings.Idle = 1;
        Settings.RestSet = 1;
    end

	if (player.MP < (CurrentStats.MP + GearsetStats.PDT.MP - 35)) then
		gFunc.InterimEquipSet(sets.Idle_PDT);
	end

    --[[-----------------------------------------------------------------------------------
        HandleMidcast: MaxMP - Keep equipset the same so you don't waste MP
    --]]-----------------------------------------------------------------------------------
    if (Settings.Idle == 2) then
        -- Do nothing
    --[[-----------------------------------------------------------------------------------
        HandleMidcast: Enfeebling Magic
    --]]-----------------------------------------------------------------------------------
    elseif (action.Skill == 'Enfeebling Magic') then
        if	(gcinclude.MndDebuffs:contains(action.Name)) then
			gFunc.EquipSet(sets.Enfeeb_Mind);
        end
        if	(gcinclude.IntDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.Enfeeb_INT);
        end
		gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
		if (conquest:GetOutsideControl()) then
			gFunc.Equip('Hands', 'Mst.Cst. Bracelets');
		end
		if (environ.WeatherElement == 'Dark' or environ.WeatherElement == 'Darkx2') then
			gFunc.Equip('Ear1', 'Diabolos\'s Earring');
		end
		if gcinclude.ObiCheck(action) >= 1 then
			gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
		end

	--[[-----------------------------------------------------------------------------------
        HandleMidcast: Elemental Magic
    --]]-----------------------------------------------------------------------------------
	elseif (action.Skill == 'Elemental Magic') then
		if (gcinclude.ElementalDebuffs:contains(action.Name)) then	
			gFunc.EquipSet(sets.MaxINT);
			gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
		else
			gFunc.EquipSet('Elemental_' .. Elemental[Settings.Elemental]);
			gFunc.Equip('main', gcinclude.ElementalStaff[action.Element]);
			if (Settings.Elemental == 1 or Settings.Elemental == 2) then -- Standard or Potency Elemental Set
				if (gData.GetAction().MppAftercast <= 50) then
					gFunc.Equip('Neck', 'Uggalepih Pendant');
				end
				if (environ.DayElement == action.Element) then
					gFunc.Equip('Legs', 'Sorcerer\'s Tonban');
				end
				if ((Settings.SorcRing == 2) or (player.HPP <= 75)) then
					gFunc.Equip('Ring2', 'Sorcerer\'s Ring');
					if (environ.DayElement == 'Ice' and gData.GetAction().MppAftercast <= 84) then
						gFunc.Equip('Ring1', 'Ice Ring');
					end
				else
					if (environ.DayElement == 'Ice' and gData.GetAction().MppAftercast <= 84) then
						gFunc.Equip('Ring2', 'Ice Ring');
					end
				end
				if (conquest:GetInsideControl()) then
                    gFunc.Equip('Head', 'Republic Circlet');
                end
				if (Settings.MagicBurst == 2) then
					gFunc.EquipSet(sets.MagicBurst);
				end
			elseif (Settings.Elemental == 3 or Settings.Elemental == 4) then -- Mid or Accuracy Elemental Set
				if (conquest:GetOutsideControl()) then
					gFunc.Equip('Hands', 'Mst.Cst. Bracelets');
				end
				if (environ.WeatherElement == 'Dark' or environ.WeatherElement == 'Darkx2') then
					gFunc.Equip('Ear1', 'Diabolos\'s Earring');
				end
				if (environ.DayElement == 'Ice') then
					gFunc.Equip('Ring2', 'Ice Ring');
				end
			elseif (Settings.Elemental == 5) then  -- Emnity Elemental Set
				if (environ.Time > 18.00 or environ.Time < 6.00) then
					gFunc.Equip('Neck', 'Fenrir\'s Torque');
				end
			end
			
		end
		if gcinclude.ObiCheck(action) >= 1 then
			gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
		end

    --[[-----------------------------------------------------------------------------------
        HandleMidcast: Dark Magic
    --]]-----------------------------------------------------------------------------------
	elseif (action.Skill == 'Dark Magic') then
		if (action.Name == 'Stun') then
			gFunc.EquipSet(sets.Stun);
        elseif (action.Name == 'Drain') then
            gFunc.EquipSet(gFunc.Combine(sets.Dark, sets.BombQueenRing));
		else
			gFunc.EquipSet(sets.Dark);
		end
        gFunc.Equip('main', gcinclude.ElementalStaff[action.Element]);
		if ((gData.GetAction().MppAftercast > 84) and (action.Name == 'Aspir')) then
			gFunc.EquipSet(gFunc.Combine(sets.Idle_MP, sets.Dark_Essential));
		end
		if (environ.WeatherElement == 'Dark' or environ.WeatherElement == 'Darkx2') then
			if (action.Name == 'Drain' or action.Name == 'Aspir') then
				gFunc.Equip('Main', 'Diabolos\'s Pole');
			end
		end
		if (environ.DayElement == 'Dark' and gData.GetAction().MppAftercast <= 84) then
			gFunc.Equip('Ring2', 'Diabolos\'s Ring');
		end
		if gcinclude.ObiCheck(action) >= 1 then
			gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
		end
	
    --[[-----------------------------------------------------------------------------------
        HandleMidcast: Cures
    --]]-----------------------------------------------------------------------------------
	elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
		gFunc.EquipSet(sets.Healing);
			if gcinclude.ObiCheck(action) >= 1 then
				gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
			end
		if (environ.Time > 18.00 or environ.Time < 6.00) then
			gFunc.Equip('Neck', 'Fenrir\'s Torque');
		end
	
    --[[-----------------------------------------------------------------------------------
        HandleMidcast: Enhancing Magic
    --]]-----------------------------------------------------------------------------------
	elseif (action.Skill == 'Enhancing Magic') then
		if (action.Name == 'Stoneskin') then
			gFunc.EquipSet(sets.Stoneskin);
		elseif (action.Name == 'Sneak') then
			gFunc.EquipSet(sets.Sneak);
		elseif (action.Name == 'Invisible') then
			gFunc.EquipSet(sets.Invisible);
		elseif (action.Name == 'Phalanx') or string.match(action.Name, 'Bar') then
			gFunc.EquipSet(sets.Enhancing);
		else
			gFunc.EquipSet(sets.ConserveMP);
			if (environ.DayElement == 'Water' and gData.GetAction().MppAftercast <= 84) then
				gFunc.Equip('Ring2', 'Water Ring');
			end
		end
	end

end

--[[-----------------------------------------------------------------------------------
    Other Handles
--]]-----------------------------------------------------------------------------------
profile.HandleAbility = function()
end

profile.HandleItem = function()
    local action = gData.GetAction();
    if (action.Name == 'Silent Oil') then
        gFunc.EquipSet(sets.Sneak);
    elseif (action.Name == 'Prism Powder') then
        gFunc.EquipSet(sets.Invisible);
    elseif (action.Name == 'Orange Juice') then
        gFunc.Equip('Legs', 'Dream Trousers +1');
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

--[[-----------------------------------------------------------------------------------
    Final Return
--]]-----------------------------------------------------------------------------------
profile.Sets = sets;
return profile;


--[[-----------------------------------------------------------------------------------
    Custom Keybinds added to default.txt
        I use the numpad to trigger certain gearswaps or gear settings
        NUMLOCK - Cycles HELM gearsets
        NUMPAD* - Last Synth
        /NUMPAD - Fish
        NUMPAD1 - Set Idle gearset variable to idle_standard
        NUMPAD2 - Set Idle gearset variable to idle_mdt_wind
        NUMPAD3 - Set Idle gearset variable to idle_mdt_lightning
        NUMPAD4 - Equip equipset 4 (mostly used for level syncs or custom gearsets)
        NUMPAD5 - Equip equipset 5 (mostly used for level syncs or custom gearsets)
        NUMPAD6 - Set Rest gearset to rest_hmp
        NUMPAD7 - Toggle Magic Burst variable
        NUMPAD8 - Toggle Sorc ring variable
        NUMPAD9 - Cycle through Nuke gearset variable
        NUMPAD0 - Set Idle gearset variable to idle_pdt
        NUMPAD. - Set Idle gearset variable to idle_mdt
        NUMPAD+ - Set Idle and Rest gearsets to max MP
--]]-----------------------------------------------------------------------------------
--[[

/unbind NUMLOCK
/unbind NUMPAD*
/unbind NUMPAD-
/unbind NUMPAD1
/unbind NUMPAD2
/unbind NUMPAD3
/unbind NUMPAD4
/unbind NUMPAD5
/unbind NUMPAD6
/unbind NUMPAD7
/unbind NUMPAD8
/unbind NUMPAD9
/unbind NUMPAD0
/unbind NUMPAD.
/unbind NUMPAD+

/bind NUMLOCK /lac fwd helm
/bind NUMPAD* /lastsynth
/bind NUMPAD- /fish
/bind NUMPAD1 /lac fwd idle_standard
/bind NUMPAD2 /lac fwd idle_mdt_wind
/bind NUMPAD3 /lac fwd idle_mdt_lightning
/bind NUMPAD4 /lac fwd teleportset
/bind NUMPAD5 /lac fwd spiritlantern
/bind NUMPAD6 /lac fwd rest_hmp
/bind NUMPAD7 /lac fwd mb
/bind NUMPAD8 /lac fwd sorc
/bind NUMPAD9 /lac fwd nukes
/bind NUMPAD0 /lac fwd idle_pdt
/bind NUMPAD. /lac fwd idle_mdt
/bind NUMPAD+ /lac fwd rest_mp

--]]






    --[[-----------------------------------------------------------------------------------
        Equipsets: Aspid Sept 17th, 2024
            Hit for 1200+
            Magic Burst Flag on
            Sorcerer's Ring Flag on
            Ice Obi and Sorc Tonban On for Ice Day
            MAB: 21-28
            Magic Accuracy: 0
            INT: 22
            Elemental Skill: 5-12
            Emnity: -12
            Conserve MP: 2
    --]]-----------------------------------------------------------------------------------
    --[[
    Aspid = {
        Ammo = 'Sweet Sachet', -- INT 2
        Head = 'Wizard\'s Petasos', -- INT 4, Emnity -4
        Neck = 'Uggalepih Pendant', -- MAB 7 (If higher than 50mp I used 'Elemental Torque', -- Elem 7)
        Ear1 = 'Moldavite Earring', -- MAB 5
        Ear2 = 'Abyssal Earring', -- INT 2
        Body = 'Igqira Weskit', -- MAB 6, Elem 5, Conserve MP 2
        Hands = 'Src. Gloves +1', -- Multiplies the magic burst bonus by 1.05, Emnity -3
        Ring1 = 'Tamas Ring', -- INT 5, Emnity -3
        Ring2 = 'Sorcerer\'s Ring', -- MAB 10
        Back = 'Black Cape +1', -- INT 3
        Waist = 'Hyorin Obi', -- 10% for magic of the day
        Legs = 'Sorcerer\'s Tonban', -- INT 3, Emnity -2, 5% damage bonus for ice on iceday
        Feet = 'Rostrum Pumps', -- INT 3, Fast Cast
    },
    ]]--
    