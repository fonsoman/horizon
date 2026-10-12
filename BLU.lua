--[[-----------------------------------------------------------------------------------
    
    Blue Mage Lua by Fonz

        This Lua file has been created and modified for use on HorizonXI
        I use custom keybinds (in a comment at the bottom)

--]]-----------------------------------------------------------------------------------

--[[-----------------------------------------------------------------------------------
    Equipsets
--]]-----------------------------------------------------------------------------------
local profile = {};
local sets = {
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard (Level 75)
            Refresh: 1
            MP: 
            PDT: -20%
            DEF: 
    --]]-----------------------------------------------------------------------------------
    Idle_Standard = {
        Main = 'Terra\'s Staff', -- PDT -20%
        Sub = 'Bugard Strap +1',
        Ammo = 'Hedgehog Bomb', -- MP 30
        Head = 'Magus Keffiyeh',
        Neck = 'Uggalepih Pendant', -- MP 20
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles', -- DEF 12, HP 30, VIT 2, Daytime Regen
        Ring1 = 'Tamas Ring', -- MP 30, Emnity -5
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- MP 48
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs'
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 60 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_60 = {
        Main = 'Terra\'s Staff', -- PDT -20%
        Sub = 'Bugard Strap +1',
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Gold Hairpin',
        Neck = 'Rep.Mythril Medal',
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Black Cotehardie',
        Hands = 'Seer\'s Mitts',
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wonder Braccae',
        Feet = 'Light Soleas',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 51 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_51 = {
        Main = 'Terra\'s Staff', -- PDT -20%
        Ammo = 'Fortune Egg', -- MP 1%
        Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Skulker\'s Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Seer\'s Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 50 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_50 = {
        Main = 'Solid Wand',
        Sub = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Sachet',
        Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Kshama Ring No.5', -- MP 5
        Back = 'Skulker\'s Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Seer\'s Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 40 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_40 = {
        Main = 'Solid Wand',
        Sub = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Sachet',
        Head = 'Republic Circlet',
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Black Cape +1',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Seer\'s Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 30 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_30 = {
        Main = 'Yew Wand +1',
        Sub = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Sachet',
        Head = 'Dodge Headband',
        Neck = 'Black Neckerchief',
        Ear1 = 'Reraise Earring', -- PEVA 2
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Black Tunic',
        Hands = 'Scentless Armlets',
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Astral Ring', -- MP 25
        Back = 'Cotton Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Light Soleas',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 20 cap
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_20 = {
        Main = 'Yew Wand +1',
        Sub = 'She-Slime Shield',
        Ammo = 'Fortune Egg',
        Neck = 'Black Neckerchief',
        Body = 'Black Tunic',
        Hands = 'Scentless Armlets',
        Ring1 = 'Astral Ring', -- MP 25
        Ring2 = 'Windurstian Ring', -- MP 3
        Back = 'Cotton Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Light Soleas',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle Standard lv 15 (Current Level)
    --]]-----------------------------------------------------------------------------------
    Idle_Standard_15 = {
        Main = 'Kingdom sword',
        Sub = 'She-Slime Shield',
        Ammo = 'Fortune Egg',
        Head = 'Dreat Hat +1', --
        Neck = 'Justice Badge', -- MND 3
        Ear1 = 'Bone Earring',
        Ear2 = 'Bone Earring',
        Body = 'Angler\'s Tunica',
        Hands = 'Battle Gloves',
        Ring1 = 'San d\'Orian Ring', --
        Ring2 = 'Bastokan Ring', --
        Back = 'Mist Silk Cape',
        Waist = 'Friar\'s Rope', --
        Legs = 'Freesword\'s Slops',
        Feet = 'Light Soleas',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle MP (Max MP)
    --]]-----------------------------------------------------------------------------------
    Idle_MP = {
        Main = 'Terra\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Hedgehog Bomb', -- MP 30
        Head = 'Faerie Hairpin', -- MP 55
        Neck = 'Uggalepih Pendant', -- MP 20
        Ear1 = 'Loquac. Earring', -- MP 30
        Ear2 = 'Static Earring',
        Body = 'Magus Jubbah',
        Hands = 'Zenith Mitts', -- MP 50
        Ring1 = 'Tamas Ring', -- MP 30
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Merciful Cape', -- MP 25
        Waist = 'Hierarch Belt', -- MP 48
        Legs = 'Magus Shalwar',
        Feet = 'Rostrum Pumps', -- MP 30
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle PDT
    --]]-----------------------------------------------------------------------------------
    Idle_PDT = {
        Main = 'Terra\'s Staff', -- PDT -20%
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Head = 'Magus Keffiyeh',
        Neck = 'Black Neckerchief',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Static Earring',
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape', -- DT -3%
        Waist = 'Hierarch Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Idle MDT
    --]]-----------------------------------------------------------------------------------
    Idle_MDT = {
        Main = 'Terra\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Head = 'Magus Keffiyeh',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring', -- MDT -2%
        Ear2 = 'Static Earring', -- MDB 2
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Merman\'s Ring', -- MDT -4%
        Ring2 = 'Merman\'s Ring', -- MDT -4%
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Idle_MDT_Wind = {
        Main = 'Aquilo\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
    },
    Idle_MDT_Lightning = {
        Main = 'Terra\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
    },
    Idle_MDT_Behemoth = {
        Main = 'Terra\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
    },
    Idle_MDT_Fafnir = {
        Main = 'Terra\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
    },
    Idle_MDT_Tiamat = {
        Main = 'Water Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Fenrir\'s Stone',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Water Belt',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Resting
    --]]-----------------------------------------------------------------------------------
    Rest_hMP = {
        Main = 'Pluto\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Hedgehog Bomb',
        Head = 'Faerie Hairpin',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Relaxing Earring', -- hMP 2
        Ear2 = 'Boroka Earring', -- hMP 1
        Body = 'Errant Hpl.', -- hMP 5
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Ether Ring',
        Back = 'Merciful Cape',
        Waist = 'Hierarch Belt', -- hMP 2
        Legs = 'Magus Shalwar',
        Feet = 'Rostrum Pumps',
    },
    Rest_hMP_50 = {
        Main = 'Solid Wand',
        Sub = 'Beater\'s Aspis',
        Ammo = 'Sweet Sachet',
        Head = 'Gold Hairpin',
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring',
        Ear2 = 'Morion Earring',
        Body = 'Seer\'s Tunic', -- hMP 1
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Astral Ring',
        Back = 'Skulker\'s Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Seer\'s Pumps',
    },
    Rest_hMP_15 = {
        Main = 'Pilgrim\'s Wand',
        Sub = 'She-Slime Shield',
        Ammo = 'Fortune Egg',
        Head = 'Leather Bandana',
        Neck = 'Black Neckerchief',
        Ear1 = 'Energy Earring',
        Ear2 = 'Morion Earring',
        Body = 'Black Tunic',
        Hands = 'Leather Gloves',
        Ring1 = 'Astral Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Cotton Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Light Soleas',
    },
    Rest_MaxMP = {
        Main = 'Pluto\'s Staff',
        Sub = 'Bugard Strap +1',
        Ammo = 'Hedgehog Bomb',
        Head = 'Faerie Hairpin',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Static Earring',
        Body = 'Magus Jubbah',
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Ether Ring',
        Back = 'Merciful Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Engaged (Melee TP)
    --]]-----------------------------------------------------------------------------------
    Engaged = {
        Main = 'Broadsword +1',
        Sub = '',
        Ammo = 'Fenrir\'s Stone',
        Head = 'Nashira Turban', -- Haste 2%, Acc 5
        Neck = 'Peacock Amulet', -- Acc 10, R.Acc 10
        Ear1 = 'Brutal Earring', -- DA 5%, Store TP 1
        Ear2 = 'Suppanomimi', -- Dual Wield, Sword 5
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2', -- DEX 3, Acc 2
        Back = 'Hexerei Cape',
        Waist = 'Swift Belt', -- Haste 4%, Acc 3, Atk -5
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Engaged_60 = {
        Main = 'Broadsword +1',
        Sub = 'Beater\'s Aspis',
        Ammo = 'Fortune Egg',
        Head = 'Gold Hairpin',
        Neck = 'Rep.Mythril Medal',
        Ear1 = 'Geist Earring',
        Ear2 = 'Morion Earring',
        Body = 'Black Cotehardie',
        Hands = 'Seer\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wonder Braccae',
        Feet = 'Light Soleas',
    },
    Engaged_50 = {
        Main = 'Broadsword +1',
        Sub = 'Beater\'s Aspis',
        Ammo = 'Sweet Sachet',
        Head = 'Republic Circlet',
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring',
        Ear2 = 'Morion Earring',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Skulker\'s Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Light Soleas',
    },
    Engaged_40 = {
        Main = 'Broadsword +1',
        Sub = 'Beater\'s Aspis',
        Ammo = 'Sweet Sachet',
        Head = 'Republic Circlet',
        Neck = 'Stone Gorget',
        Ear1 = 'Geist Earring',
        Ear2 = 'Morion Earring',
        Body = 'Ryl.Sqr. Robe',
        Hands = 'Scentless Armlets',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Black Cape +1',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Wonder Braccae',
        Feet = 'Light Soleas',
    },
    Engaged_30 = {
        Main = 'Broadsword +1',
        Sub = 'Beater\'s Aspis',
        Ammo = 'Sweet Sachet',
        Head = 'Dodge Headband',
        Neck = 'Black Neckerchief',
        Ear1 = 'Reraise Earring',
        Ear2 = 'Morion Earring',
        Body = 'Black Tunic',
        Hands = 'Scentless Armlets',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Balance Ring',
        Back = 'Cotton Cape',
        Waist = 'Mrc.Cpt. Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Light Soleas',
    },
    Engaged_20 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Fortune Egg',
        Neck = 'Black Neckerchief',
        Body = 'Black Tunic',
        Hands = 'Scentless Armlets',
        Ring1 = 'Balance Ring',
        Ring2 = 'Beetle Ring',
        Back = 'Cotton Cape',
        Waist = 'Warrior\'s Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Light Soleas',
    },
    Engaged_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet',
        Head = 'Leather Bandana',
        Neck = 'Justice Badge',
        Ear1 = 'Bone Earring',
        Ear2 = 'Bone Earring',
        Body = 'Leather Vest',
        Hands = 'Leather Gloves',
        Ring1 = 'Balance Ring',
        Ring2 = 'Beetle Ring',
        Back = 'Rabbit Mantle',
        Waist = 'Warrior\'s Belt',
        Legs = 'Leather Trousers',
        Feet = 'Leather Highboots',
    },
    Engaged_Accuracy = {
        Main = 'Broadsword +1',
        Sub = '',
        Ammo = 'Fenrir\'s Stone',
        Head = 'Nashira Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Hexerei Cape',
        Waist = 'Life Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Engaged_Attack = {
        Main = 'Broadsword +1',
        Sub = '',
        Ammo = 'Fenrir\'s Stone',
        Head = 'Magus Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Amemet Mantle +1',
        Waist = 'Swift Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Physical Blue Magic
            Foot Kick, Sprout Smack, Wild Oats, Power Attack, Queasyshroom, Helldive,
            Head Butt, Claw Cyclone, Screwdriver, Bludgeon, Frenetic Rip, Disseverment, etc.
            Requires: STR, DEX, Attack, Accuracy, Blue Magic Skill
    --]]-----------------------------------------------------------------------------------
    Physical_Standard = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh', -- Blue Magic Skill
        Neck = 'Peacock Amulet', -- Acc 10
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah', -- Blue Magic Skill 15
        Hands = 'Magus Bazubands', -- Blue Magic Skill 10
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2', -- DEX 3, Acc 2
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Physical_Accuracy = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Hexerei Cape',
        Waist = 'Life Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Physical_Attack = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Amemet Mantle +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Physical_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet',
        Head = 'Leather Bandana',
        Neck = 'Justice Badge', -- MND 3 (Sprout Smack / Helldive)
        Ear1 = 'Bone Earring', -- Atk 1
        Ear2 = 'Bone Earring', -- Atk 1
        Body = 'Leather Vest',
        Hands = 'Leather Gloves',
        Ring1 = 'Beetle Ring', -- STR 2
        Ring2 = 'Balance Ring', -- DEX 2
        Back = 'Rabbit Mantle',
        Waist = 'Warrior\'s Belt', -- VIT 2
        Legs = 'Leather Trousers',
        Feet = 'Leather Highboots',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Magical Blue Magic
            Sandspin, Blastbomb, Bomb Toss, Ice Break, Maelstrom, Firespit,
            Mind Blast, Magic Hammer, Eyes On Me, 1000 Needles
            Requires: MAB, INT, MND, Magic Accuracy, Blue Magic Skill
    --]]-----------------------------------------------------------------------------------
    Magical_Standard = {
        Ammo = 'Sweet Sachet', -- INT 2
        Head = 'Nashira Turban', -- MAcc 5
        Neck = 'Philomath Stole',
        Ear1 = 'Novio Earring', -- MAB 7
        Ear2 = 'Moldavite Earring', -- MAB 5
        Body = 'Errant Hpl.', -- INT 10
        Hands = 'Zenith Mitts', -- MAB 5
        Ring1 = 'Tamas Ring', -- INT 5
        Ring2 = 'Snow Ring', -- INT 5
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops', -- INT 8
        Feet = 'Rostrum Pumps', -- INT 3
    },
    Magical_Potency = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban',
        Neck = 'Philomath Stole',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Errant Hpl.',
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    Magical_Accuracy = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Philomath Stole',
        Ear1 = 'Novio Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5',
        Back = 'Merciful Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Magical_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet', -- INT 2
        Head = 'Leather Bandana',
        Neck = 'Black Neckerchief',
        Ear1 = 'Morion Earring', -- MP 4
        Ear2 = 'Energy Earring',
        Body = 'Black Tunic',
        Hands = 'Leather Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Astral Ring',
        Back = 'Cotton Cape',
        Waist = 'Friar\'s Rope', -- INT 1, MND 1, MP 4
        Legs = 'Leather Trousers',
        Feet = 'Light Soleas',
    },
    Magical_Drain = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban',
        Neck = 'Philomath Stole',
        Ear1 = 'Abyssal Earring',
        Ear2 = 'Morion Earring',
        Body = 'Errant Hpl.',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5',
        Back = 'Merciful Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Breath Spells
            Poison Breath, Heat Breath, Frost Breath, Bad Breath, Magnetite Cloud,
            Flying Hip Press, Radiant Breath, Wind Breath
            Requires: HP Max, Blue Magic Skill, MAB
    --]]-----------------------------------------------------------------------------------
    Magical_Breath = {
        Ammo = 'Fenrir\'s Stone', -- HP 30
        Head = 'Magus Keffiyeh',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles', -- HP 30
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.5',
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Healing Blue Magic & Cures
            Pollen, Wild Carrot, Healing Breeze, Magic Fruit, Plenilune Embrace, Cure
            Requires: MND, VIT, Blue Magic Skill, Healing Skill
    --]]-----------------------------------------------------------------------------------
    Healing = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Nashira Turban',
        Neck = 'Rep.Mythril Medal',
        Ear1 = 'Geist Earring', -- MND 1
        Ear2 = 'Static Earring', -- MND 2
        Body = 'Errant Hpl.', -- MND 10
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring', -- MND 5
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Mahatma Slops', -- MND 8
        Feet = 'Errant Pigaches', -- MND 5
    },
    Healing_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet',
        Head = 'Leather Bandana',
        Neck = 'Justice Badge', -- MND 3
        Ear1 = 'Shell Earring',
        Ear2 = 'Energy Earring',
        Body = 'Black Tunic',
        Hands = 'Leather Gloves',
        Ring1 = 'Saintly Ring', -- MND 2
        Ring2 = 'Saintly Ring', -- MND 2
        Back = 'Cotton Cape',
        Waist = 'Friar\'s Rope', -- MND 1
        Legs = 'Leather Trousers',
        Feet = 'Light Soleas',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Blue Magic Buffs & Enhancing
            Cocoon, Refueling, Warm-Up, Barrier Tusk, Reactor Cool, Zephyr Mantle
    --]]-----------------------------------------------------------------------------------
    Buff_Standard = {
        Head = 'Magus Keffiyeh',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Buff_Stoneskin = {
        Head = 'Nashira Turban',
        Neck = 'Stone Gorget',
        Ear1 = 'Geist Earring',
        Ear2 = 'Static Earring',
        Body = 'Errant Hpl.', -- MND 10
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring', -- MND 5
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Mahatma Slops', -- MND 8
        Feet = 'Errant Pigaches', -- MND 5
    },
    Buff_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet',
        Head = 'Leather Bandana',
        Neck = 'Justice Badge',
        Body = 'Leather Vest',
        Hands = 'Leather Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Astral Ring',
        Back = 'Rabbit Mantle',
        Waist = 'Friar\'s Rope',
        Legs = 'Leather Trousers',
        Feet = 'Leather Highboots',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Enfeebling Blue Magic & Debuffs
            Sprout Smack, Filamented Hold, Sheep Song, Yawn, Blank Gaze (MND Debuffs)
            Soporific, Geist Wall, Infrasonics, Sound Blast, Awful Eye, Frightful Roar (INT Debuffs)
    --]]-----------------------------------------------------------------------------------
    Enfeeb_Mind = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Nashira Turban',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Static Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.9',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Errant Pigaches',
    },
    Enfeeb_INT = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    Stun = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Merciful Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Fast Cast & Precast
    --]]-----------------------------------------------------------------------------------
    FastCast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
    },
    PreCastCure = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Weaponskills
    --]]-----------------------------------------------------------------------------------
    Weaponskill_Standard = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Hexerei Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Weaponskill_FastBlade = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Amemet Mantle +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Weaponskill_BurningBlade = {
        Ammo = 'Sweet Sachet',
        Head = 'Nashira Turban',
        Neck = 'Philomath Stole',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Errant Hpl.',
        Hands = 'Zenith Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Snow Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    Weaponskill_FlatBlade = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Hexerei Cape',
        Waist = 'Life Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Weaponskill_VorpalBlade = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Magus Jubbah',
        Hands = 'Magus Bazubands',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Amemet Mantle +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Weaponskill_SavageBlade = {
        Ammo = 'Sweet Sachet',
        Head = 'Magus Keffiyeh',
        Neck = 'Spike Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Abyssal Earring',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.9',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Errant Pigaches',
    },
    Weaponskill_SpiritsWithin = {
        Ammo = 'Fenrir\'s Stone',
        Head = 'Magus Keffiyeh',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Static Earring',
        Body = 'Magus Jubbah',
        Hands = 'Garden Bangles',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Kshama Ring No.2',
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Magus Shalwar',
        Feet = 'Magus Charuqs',
    },
    Weaponskill_15 = {
        Main = 'Spatha',
        Sub = 'She-Slime Shield',
        Ammo = 'Sweet Sachet',
        Head = 'Leather Bandana',
        Neck = 'Justice Badge',
        Ear1 = 'Bone Earring',
        Ear2 = 'Bone Earring',
        Body = 'Leather Vest',
        Hands = 'Leather Gloves',
        Ring1 = 'Beetle Ring', -- STR 2
        Ring2 = 'Balance Ring', -- DEX 2
        Back = 'Rabbit Mantle',
        Waist = 'Warrior\'s Belt',
        Legs = 'Leather Trousers',
        Feet = 'Leather Highboots',
    },
    --[[-----------------------------------------------------------------------------------
        Equipsets: Utility / HELM
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
        Feet = 'Worker Boots',
    },
    Chocobo = {
        Body = 'Choc. Jack Coat',
        Hands = 'Rider\'s Gloves',
        Legs = 'Rider\'s Hose',
        Feet = 'Rider\'s Boots',
    },
    Sneak = {
        Feet = 'Dream Boots +1',
        Back = 'Skulker\'s Cape', 
    },
    Invisible = {
        Hands = 'Dream Mittens +1',
        Back = 'Skulker\'s Cape',
    },
    Teleport = {
        Main = 'Treat Staff II',
        Head = 'Dream Hat +1',
        Body = 'Mandra. Suit',
        Ring2 = 'Tavnazian Ring'
    },
    MagicBurst = {
        Ear2 = 'Static Earring',
    }
};

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
};
local Engaged = {
    [1] = 'Standard',
    [2] = 'Accuracy',
    [3] = 'Attack'
};
local Physical = {
    [1] = 'Standard',
    [2] = 'Accuracy',
    [3] = 'Attack'
};
local Magical = {
    [1] = 'Standard',
    [2] = 'Potency',
    [3] = 'Accuracy'
};
local UseStaff = {
    [1] = 'False',
    [2] = 'True'
};
local MagicBurst = {
    [1] = 'False',
    [2] = 'True'
};
local Helm = {
    [1] = 'Standard',
    [2] = 'Fishing',
    [3] = 'Cooking',
    [4] = 'Worker',
    [5] = 'Chocobo',
    [6] = 'Teleport'
};
local RestSet = {
    [1] = 'Rest_hMP',
    [2] = 'Rest_MaxMP'
};

--[[-----------------------------------------------------------------------------------
    Blue Magic Spell Categories
--]]-----------------------------------------------------------------------------------
local PhysicalSpells = T{
    'Foot Kick', 'Sprout Smack', 'Wild Oats', 'Power Attack', 'Queasyshroom',
    'Helldive', 'Head Butt', 'Claw Cyclone', 'Screwdriver', 'Grand Slam',
    'Smite of Rage', 'Bludgeon', 'Feather Storm', 'Pinecone Bomb', 'Jet Stream',
    'Uppercut', 'Terror Touch', 'Mandibular Bite', 'Sickle Slash', 'Dimensional Death',
    'Spiral Spin', 'Death Scissors', 'Body Slam', 'Hydro Shot', 'Frenetic Rip',
    'Frypan', 'Seedspray', 'Tail Slap', 'Hysteric Barrage', 'Asuran Claws',
    'Cannonball', 'Disseverment', 'Ram Charge', 'Vertical Cleave', 'Quad. Continuum',
    'Empty Thrash', 'Delta Thrust', 'Heavy Strike', 'Vanity Dive', 'Goblin Rush',
    'Amorphic Spikes', 'Barbed Crescent', 'Quadratic Continuum', 'Whirl of Rage',
    'Benthic Typhoon'
};

local MagicalSpells = T{
    'Sandspin', 'Blastbomb', 'Bomb Toss', 'Cursed Sphere', 'Ice Break',
    'Maelstrom', 'Mysterious Orb', 'Firespit', 'Thermal Pulse', 'Charged Whisker',
    'Mind Blast', 'Magic Hammer', 'Eyes On Me', '1000 Needles', 'Blitzstrahl',
    'Regurgitation', 'Sub-zero Smash', 'Tempestuous Upheaval', 'Rending Deluge',
    'Embalming Earth', 'Tenebral Crush', 'Spectral Floe', 'Entomb', 'Scouring Spate',
    'Anvil Gale', 'Searing Tempest', 'Silent Sands'
};

local BreathSpells = T{
    'Poison Breath', 'Heat Breath', 'Frost Breath', 'Bad Breath', 'Magnetite Cloud',
    'Flying Hip Press', 'Radiant Breath', 'Wind Breath', 'Hecatomb Wave'
};

local DrainSpells = T{
    'Blood Drain', 'Digest', 'Blood Saber', 'MP Drainkiss', 'Osmosis'
};

local HealingSpells = T{
    'Pollen', 'Wild Carrot', 'Healing Breeze', 'Magic Fruit', 'Plenilune Embrace',
    'White Wind', 'Exuviation'
};

local StoneskinBuffs = T{
    'Metallic Body', 'Diamondhide'
};

local BuffSpells = T{
    'Cocoon', 'Refueling', 'Warm-Up', 'Barrier Tusk', 'Reactor Cool',
    'Plasma Charge', 'Zephyr Mantle', 'Amplification', 'Battery Charge',
    'Saline Coat', 'Magic Barrier', 'Occultation', 'Erratic Flutter',
    'Nat. Meditation', 'Feather Barrier', 'Mighty Guard', 'Harden Shell',
    'Carcharian Verve'
};

local DebuffMND = T{
    'Sprout Smack', 'Filamented Hold', 'Sheep Song', 'Yawn', 'Blank Gaze',
    'Mind Blast', 'Chaotic Eye', 'Light of Penance', 'Actinic Burst'
};

local DebuffINT = T{
    'Soporific', 'Geist Wall', 'Infrasonics', 'Sound Blast', 'Awful Eye',
    'Frightful Roar', 'Stinking Gas', 'Lowing', 'Cimicine Discharge',
    'Demoralizing Roar', 'Auroral Drape', 'Venom Shell', 'Corrosive Ooze',
    'Enervation', 'Tourbillion', 'Reaving Wind', 'Feather Tickle'
};

local StunSpells = T{
    'Head Butt', 'Frypan', 'Tail Slap', 'Temporal Shift', 'Sudden Lunge'
};

--[[-----------------------------------------------------------------------------------
    Generic Extras
--]]-----------------------------------------------------------------------------------
conquest = gFunc.LoadFile('common\\Conquest.lua');
gcinclude = gFunc.LoadFile('common\\Generic.lua');

--[[-----------------------------------------------------------------------------------
    Current Stats
--]]-----------------------------------------------------------------------------------
local CurrentStatsTHF = {
    ['HP'] = 812,
    ['MP'] = 799,
};

local CurrentStatsWAR = {
    ['HP'] = 900,
    ['MP'] = 700,
};

local CurrentStatsNIN = {
    ['HP'] = 830,
    ['MP'] = 750,
};

local CurrentStatsRDM = {
    ['HP'] = 812,
    ['MP'] = 858,
};

local CurrentStatsWHM = {
    ['HP'] = 794,
    ['MP'] = 877,
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
    },
    ['Rest'] = {
        ['HP'] = -62,
        ['MP'] = 219
    },
    ['Healing'] = {
        ['HP'] = -11,
        ['MP'] = 128
    }
};

--[[-----------------------------------------------------------------------------------
    Gearset Variable Defaults
--]]-----------------------------------------------------------------------------------
local Settings = {
    Idle = 1,
    Engaged = 1,
    Physical = 1,
    Magical = 1,
    UseStaff = 1,
    MagicBurst = 1,
    Helm = 1,
    RestSet = 1,
};

--[[-----------------------------------------------------------------------------------
    OnLoad
        Runs commands when job switched
--]]-----------------------------------------------------------------------------------
profile.OnLoad = function()
    local player = gData.GetPlayer();
    if (player.SubJob == 'THF') then
        CurrentStats = CurrentStatsTHF;
        (function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    elseif (player.SubJob == 'WAR') then
        CurrentStats = CurrentStatsWAR;
        (function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    elseif (player.SubJob == 'NIN') then
        CurrentStats = CurrentStatsNIN;
        (function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    elseif (player.SubJob == 'RDM') then
        CurrentStats = CurrentStatsRDM;
        (function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    elseif (player.SubJob == 'WHM') then
        CurrentStats = CurrentStatsWHM;
        (function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
    else
        CurrentStats = CurrentStatsTHF;
    end
end

--[[-----------------------------------------------------------------------------------
    HandleCommand
        Accepts arguments to update gearset variables
--]]-----------------------------------------------------------------------------------
profile.HandleCommand = function(args)
    local environ = gData.GetEnvironment();
    
    -- Idle sets
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

    -- Rest sets
    if (args[1] == 'rest_hmp') then
        Settings.RestSet = 1;
        gFunc.Message('Rest: hMP');
    elseif (args[1] == 'rest_mp') then
        Settings.RestSet = 2;
        Settings.Idle = 2;
        gFunc.Message('Rest + Idle: Max MP');
    end

    -- Engaged melee mode cycle
    if (args[1] == 'engaged') then
        if (Settings.Engaged == 1) then
            Settings.Engaged = 2;
            gFunc.Message('Engaged Set: Accuracy');
        elseif (Settings.Engaged == 2) then
            Settings.Engaged = 3;
            gFunc.Message('Engaged Set: Attack');
        else
            Settings.Engaged = 1;
            gFunc.Message('Engaged Set: Standard');
        end
    end

    -- Physical Blue Magic mode cycle
    if (args[1] == 'physical') then
        if (Settings.Physical == 1) then
            Settings.Physical = 2;
            gFunc.Message('Physical Blue Magic: Accuracy');
        elseif (Settings.Physical == 2) then
            Settings.Physical = 3;
            gFunc.Message('Physical Blue Magic: Attack');
        else
            Settings.Physical = 1;
            gFunc.Message('Physical Blue Magic: Standard');
        end
    end

    -- Magical Blue Magic mode cycle
    if (args[1] == 'nukes') then
        if (Settings.Magical == 1) then
            Settings.Magical = 2;
            gFunc.Message('Magical Blue Magic: Potency');
        elseif (Settings.Magical == 2) then
            Settings.Magical = 3;
            gFunc.Message('Magical Blue Magic: Accuracy');
        else
            Settings.Magical = 1;
            gFunc.Message('Magical Blue Magic: Standard');
        end
    end

    -- Toggle Staff casting for magic nukes/drains
    if (args[1] == 'usestaff') then
        if (Settings.UseStaff == 1) then
            Settings.UseStaff = 2;
            gFunc.Message('Elemental Staff Midcast: Enabled');
        else
            Settings.UseStaff = 1;
            gFunc.Message('Elemental Staff Midcast: Disabled');
        end
    end

    -- Toggle Magic Burst
    if (args[1] == 'mb') then
        if (Settings.MagicBurst == 1) then
            Settings.MagicBurst = 2;
            gFunc.Message('Magic Burst: True');
        else
            Settings.MagicBurst = 1;
            gFunc.Message('Magic Burst: False');
        end
    end

    -- Cycle HELM gearsets
    if (args[1] == 'helm') then
        if (Settings.Helm == 1) then
            Settings.Helm = 2;
            gFunc.Message('Helm Set: Fishing');
        elseif (Settings.Helm == 2) then
            Settings.Helm = 3;
            gFunc.Message('Helm Set: Cooking');
        elseif (Settings.Helm == 3) then
            Settings.Helm = 4;
            gFunc.Message('Helm Set: Teleport');
        else
            Settings.Helm = 1;
            gFunc.Message('Helm Set: Standard');
        end
    end
end

--[[-----------------------------------------------------------------------------------
    HandleDefault
        Called constantly or when player status changes
--]]-----------------------------------------------------------------------------------
profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environ = gData.GetEnvironment();

    -- Resting Status
    if (player.Status == 'Resting') then
        if (Settings.RestSet == 2) then
            gFunc.EquipSet(sets.Rest_MaxMP);
        elseif (player.MainJobSync <= 15) then
            gFunc.EquipSet(sets.Rest_hMP_15);
        elseif (player.MainJobSync <= 50) then
            gFunc.EquipSet(sets.Rest_hMP_50);
        else
            gFunc.EquipSet(sets.Rest_hMP);
        end

    -- Engaged Status
    elseif (player.Status == 'Engaged') then
        if (Settings.Engaged == 2) then
            gFunc.EquipSet(sets.Engaged_Accuracy);
        elseif (Settings.Engaged == 3) then
            gFunc.EquipSet(sets.Engaged_Attack);
        else
            if (player.MainJobSync >= 75) then
                gFunc.EquipSet(sets.Engaged);
            elseif (player.MainJobSync >= 60) then
                gFunc.EquipSet(sets.Engaged_60);
            elseif (player.MainJobSync >= 50) then
                gFunc.EquipSet(sets.Engaged_50);
            elseif (player.MainJobSync >= 40) then
                gFunc.EquipSet(sets.Engaged_40);
            elseif (player.MainJobSync >= 30) then
                gFunc.EquipSet(sets.Engaged_30);
            elseif (player.MainJobSync >= 20) then
                gFunc.EquipSet(sets.Engaged_20);
            else
                gFunc.EquipSet(sets.Engaged_15);
            end
        end

    -- Idle Status
    else
        if (Settings.Helm == 2) then
            gFunc.EquipSet(sets.Fishing);
            if (environ.Area == "Sea Serpent Grotto") then
                gFunc.Equip('Ammo','Shrimp Lure');
            elseif (environ.Area == "Ship bound for Mhaura") or (environ.Area == "Ship bound for Selbina") then
                gFunc.Equip('Ammo','Sinking Minnow');
            end
        elseif (Settings.Helm == 3) then
            gFunc.EquipSet(sets.Cooking);
        elseif (Settings.Helm == 4) then
            gFunc.EquipSet(sets.Teleport);
        elseif (Settings.Idle == 1) then
            if (player.MainJobSync >= 75) then
                if (player.MP >= (CurrentStats.MP + GearsetStats.Idle.MP - 35)) then
                    gFunc.EquipSet(sets.Idle_MP);
                    if (conquest:GetOutsideControl()) then
                        gFunc.Equip('Neck', 'Rep.Gold Medal');
                    elseif (environ.Time < 18.00 and environ.Time > 6.00) then
                        gFunc.Equip('Neck', 'Fenrir\'s Torque');
                    end
                else
                    gFunc.EquipSet(sets.Idle_Standard);
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
                gFunc.EquipSet(sets.Idle_Standard_15);
            end
        elseif (Settings.Idle == 2) then
            gFunc.EquipSet(sets.Idle_MP);
        elseif (Settings.Idle == 3) then
            gFunc.EquipSet(sets.Idle_PDT);
        elseif (Settings.Idle == 4) then
            if (environ.Area == "Behemoth\'s Dominion") then
                gFunc.EquipSet(sets.Idle_MDT_Behemoth);
            elseif (environ.Area == "Dragon\'s Aery") then
                gFunc.EquipSet(sets.Idle_MDT_Fafnir);
            elseif (environ.Area == "Attohwa Chasm") or (environ.Area == "Mount Zhayolm") then
                gFunc.EquipSet(sets.Idle_MDT_Tiamat);
            else
                gFunc.EquipSet(sets.Idle_MDT);
            end
        elseif (Settings.Idle == 5) then
            gFunc.EquipSet(sets.Idle_MDT_Wind);
        elseif (Settings.Idle == 6) then
            gFunc.EquipSet(sets.Idle_MDT_Lightning);
        else
            gFunc.EquipSet('Idle_' .. Idle[Settings.Idle]);
        end

        -- City Zones
        if (gcinclude.CityZones:contains(environ.Area)) then
            if (player.MainJobSync >= 70) then
                gFunc.EquipSet(sets.Idle_MP);
                if (conquest:GetOutsideControl()) then
                    gFunc.Equip('Neck', 'Rep.Gold Medal');
                elseif (environ.Time < 18.00 and environ.Time > 6.00) then
                    gFunc.Equip('Neck', 'Fenrir\'s Torque');
                end
            end
            if (player.IsMoving) then
                gFunc.Equip('Body', 'Ducal Aketon');
            end
        end
    end
end

--[[-----------------------------------------------------------------------------------
    HandlePrecast
        Called at the beginning of every spell cast
--]]-----------------------------------------------------------------------------------
profile.HandlePrecast = function()
    local player = gData.GetPlayer();
    local action = gData.GetAction();

    local fastCastValue = 0.04;
    if (player.SubJob == 'RDM') then
        fastCastValue = fastCastValue + 0.15; -- Fast Cast II Trait
    end
    local latency = 0.1;
    local minimumBuffer = 1.0;
    local packetDelay = 0.4;
    local castDelay = ((action.CastTime * (1 - fastCastValue)) / 1000) + latency - minimumBuffer;
    if (castDelay >= packetDelay) then
        gFunc.SetMidDelay(castDelay);
    end

    if string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') or HealingSpells:contains(action.Name) then
        gFunc.EquipSet(sets.PreCastCure);
    else
        gFunc.EquipSet(sets.FastCast);
        if (player.SubJob == 'RDM') then
            gFunc.Equip('Back', 'Warlock\'s Mantle');
        end
    end
end

--[[-----------------------------------------------------------------------------------
    HandleMidcast
        Called slightly into casting a spell
--]]-----------------------------------------------------------------------------------
profile.HandleMidcast = function()
    local action = gData.GetAction();
    local player = gData.GetPlayer();
    local environ = gData.GetEnvironment();

    -- MaxMP Idle lock check
    if (Settings.Idle == 2) then
        return;
    end

    -- 1. BLUE MAGIC
    if (action.Skill == 'Blue Magic') then
        
        -- Level 15 specific blue magic triggers
        if (player.MainJobSync <= 15) then
            if (HealingSpells:contains(action.Name)) then
                gFunc.EquipSet(sets.Healing_15);
            elseif (StoneskinBuffs:contains(action.Name)) then
                gFunc.EquipSet(sets.Buff_Stoneskin);
            elseif (BuffSpells:contains(action.Name)) then
                gFunc.EquipSet(sets.Buff_15);
            elseif (MagicalSpells:contains(action.Name)) then
                gFunc.EquipSet(sets.Magical_15);
            elseif (StunSpells:contains(action.Name)) then
                gFunc.EquipSet(sets.Stun);
            elseif (DebuffMND:contains(action.Name)) then
                gFunc.EquipSet(sets.Enfeeb_Mind);
            elseif (DebuffINT:contains(action.Name)) then
                gFunc.EquipSet(sets.Enfeeb_INT);
            else
                -- Physical spells at level 15: Foot Kick, Sprout Smack, Wild Oats, Power Attack, Queasyshroom, Helldive, etc.
                gFunc.EquipSet(sets.Physical_15);
            end
            return;
        end

        -- Level > 15 standard Blue Magic logic
        -- Physical Blue Magic
        if (PhysicalSpells:contains(action.Name)) then
            if (Settings.Physical == 2) then
                gFunc.EquipSet(sets.Physical_Accuracy);
            elseif (Settings.Physical == 3) then
                gFunc.EquipSet(sets.Physical_Attack);
            else
                gFunc.EquipSet(sets.Physical_Standard);
            end

        -- Magical Blue Magic (Nukes)
        elseif (MagicalSpells:contains(action.Name)) then
            if (Settings.Magical == 2) then
                gFunc.EquipSet(sets.Magical_Potency);
            elseif (Settings.Magical == 3) then
                gFunc.EquipSet(sets.Magical_Accuracy);
            else
                gFunc.EquipSet(sets.Magical_Standard);
            end

            -- Optional staff swap if enabled
            if (Settings.UseStaff == 2) then
                gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
            end

            -- Elemental Obi Check
            if (gcinclude.ObiCheck(action) >= 1) then
                gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
            end

            -- Magic Burst Check
            if (Settings.MagicBurst == 2) then
                gFunc.EquipSet(sets.MagicBurst);
            end

        -- Breath Spells
        elseif (BreathSpells:contains(action.Name)) then
            gFunc.EquipSet(sets.Magical_Breath);

        -- Drain / Aspir Spells
        elseif (DrainSpells:contains(action.Name)) then
            gFunc.EquipSet(sets.Magical_Drain);
            if (Settings.UseStaff == 2) then
                gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
            end
            if (gcinclude.ObiCheck(action) >= 1) then
                gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
            end

        -- Healing Blue Magic
        elseif (HealingSpells:contains(action.Name)) then
            gFunc.EquipSet(sets.Healing);
            if (Settings.UseStaff == 2 and action.Element == 'Light') then
                gFunc.Equip('Main', gcinclude.ElementalStaff['Light']);
            end
            if (action.Element and action.Element ~= 'None' and gcinclude.ObiCheck(action) >= 1) then
                gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
            end

        -- Stoneskin Buffs (Metallic Body, Diamondhide)
        elseif (StoneskinBuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.Buff_Stoneskin);

        -- Standard Buffs
        elseif (BuffSpells:contains(action.Name)) then
            gFunc.EquipSet(sets.Buff_Standard);

        -- Debuffs
        elseif (DebuffMND:contains(action.Name)) then
            gFunc.EquipSet(sets.Enfeeb_Mind);
            if (Settings.UseStaff == 2) then
                gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
            end
        elseif (DebuffINT:contains(action.Name)) then
            gFunc.EquipSet(sets.Enfeeb_INT);
            if (Settings.UseStaff == 2) then
                gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
            end
        else
            gFunc.EquipSet(sets.Physical_Standard);
        end

    -- 2. NON-BLUE MAGIC (Subjob Spells)
    elseif (action.Skill == 'Healing Magic') or string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        if (player.MainJobSync <= 15) then
            gFunc.EquipSet(sets.Healing_15);
        else
            gFunc.EquipSet(sets.Healing);
            if (gcinclude.ObiCheck(action) >= 1) then
                gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
            end
        end

    elseif (action.Skill == 'Enhancing Magic') then
        if (action.Name == 'Stoneskin') then
            gFunc.EquipSet(sets.Buff_Stoneskin);
        elseif (action.Name == 'Sneak') then
            gFunc.EquipSet(sets.Sneak);
        elseif (action.Name == 'Invisible') then
            gFunc.EquipSet(sets.Invisible);
        else
            gFunc.EquipSet(sets.Buff_Standard);
        end

    elseif (action.Skill == 'Enfeebling Magic') then
        if (gcinclude.MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.Enfeeb_Mind);
        elseif (gcinclude.IntDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.Enfeeb_INT);
        else
            gFunc.EquipSet(sets.Enfeeb_INT);
        end
        if (Settings.UseStaff == 2) then
            gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
        end

    elseif (action.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Magical_Standard);
        if (Settings.UseStaff == 2) then
            gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
        end
        if (gcinclude.ObiCheck(action) >= 1) then
            gFunc.Equip('Waist', gcinclude.ElementalObi[action.Element]);
        end

    elseif (action.Skill == 'Dark Magic') then
        if (action.Name == 'Stun') then
            gFunc.EquipSet(sets.Stun);
        else
            gFunc.EquipSet(sets.Magical_Drain);
        end
        if (Settings.UseStaff == 2) then
            gFunc.Equip('Main', gcinclude.ElementalStaff[action.Element]);
        end

    elseif (action.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.FastCast);
    end
end

--[[-----------------------------------------------------------------------------------
    Other Handles
--]]-----------------------------------------------------------------------------------
profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Chain Affinity') then
        -- Chain Affinity
    elseif (action.Name == 'Burst Affinity') then
        -- Burst Affinity
    end
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
    local action = gData.GetAction();
    local player = gData.GetPlayer();

    if (player.MainJobSync <= 15) then
        gFunc.EquipSet(sets.Weaponskill_15);
    elseif (action.Name == 'Fast Blade') then
        gFunc.EquipSet(sets.Weaponskill_FastBlade);
    elseif (action.Name == 'Burning Blade' or action.Name == 'Red Lotus Blade') then
        gFunc.EquipSet(sets.Weaponskill_BurningBlade);
    elseif (action.Name == 'Flat Blade') then
        gFunc.EquipSet(sets.Weaponskill_FlatBlade);
    elseif (action.Name == 'Vorpal Blade') then
        gFunc.EquipSet(sets.Weaponskill_VorpalBlade);
    elseif (action.Name == 'Savage Blade') then
        gFunc.EquipSet(sets.Weaponskill_SavageBlade);
    elseif (action.Name == 'Spirits Within') then
        gFunc.EquipSet(sets.Weaponskill_SpiritsWithin);
    else
        gFunc.EquipSet(sets.Weaponskill_Standard);
    end
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
        NUMPAD7 - Cycle Physical spell mode (Standard / Accuracy / Attack)
        NUMPAD8 - Toggle Elemental Staff midcast
        NUMPAD9 - Cycle Magical spell mode (Standard / Potency / Accuracy)
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
/bind NUMPAD7 /lac fwd physical
/bind NUMPAD8 /lac fwd usestaff
/bind NUMPAD9 /lac fwd nukes
/bind NUMPAD0 /lac fwd idle_pdt
/bind NUMPAD. /lac fwd idle_mdt
/bind NUMPAD+ /lac fwd rest_mp

--]]
