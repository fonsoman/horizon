--[[-----------------------------------------------------------------------------------
    Summoner (SMN) Luashitacast Profile - Standalone
    Character: Nedsnark (Level 70)
    Server: HorizonXI

    Overview:
    - Standalone file (does not require Generic.lua or common files)
    - Designed to be simple, clean, and easy to customize
    - Includes:
        * Idle & Avatar Perpetuation gear
        * Resting MP (hMP) gear with Dark/Pluto's Staff
        * Stoneskin gear with MND and Stone Gorget
        * Blood Pact Delay & Damage/Ward gear (Physical & Magical)
        * Automatic Elemental Staff swapping for each Avatar & Spirit
        * Cure & Fast Cast utilities
-----------------------------------------------------------------------------------]]--

local profile = {};

--[[-----------------------------------------------------------------------------------
    GEAR SETS
    Update the item names below with whatever gear you currently own.
    If you don't own an item for a slot, you can leave it blank '' or remove the line.
-----------------------------------------------------------------------------------]]--
local sets = {
    --[[-------------------------------------------------------------------------------
        Idle: Default gear worn when standing around with NO avatar summoned.
        Earth Staff provides -20% Physical Damage Taken (PDT) for survival.
    -------------------------------------------------------------------------------]]--
    Idle = {
        Main   = 'Earth Staff',         -- Terra's Staff (PDT -20%)
        Ammo   = 'Fortune Egg',         -- MP +1%
        Head   = 'Faerie Hairpin',      -- MP +55 (or Evoker's Horn)
        Neck   = 'Justice Badge',       -- MND +3 (or Holy Phial)
        Ear1   = 'Geist Earring',       -- MP +5, MND +1
        Ear2   = 'Morion Earring',      -- MP +4, INT +1
        Body   = 'Vermillion Cloak',    -- Refresh +1 (or Errant Hpl. / Royal Sovereign Robe)
        Hands  = 'Carbuncle Mitts',     -- MP +13
        Ring1  = 'Astral Ring',         -- MP +25 (or Tamas Ring)
        Ring2  = 'Evoker\'s Ring',      -- Perp -1, Summoning Skill +10 (Level 70)
        Back   = 'Astute Cape',         -- Summoning Skill +5 (or Skulker's / Black Cape +1)
        Waist  = 'Hierarch Belt',       -- MP +48, hMP +2 (or Friar's Rope)
        Legs   = 'Evoker\'s Spats',     -- MP +15, Summoning Skill +3
        Feet   = 'Evoker\'s Pigaches',  -- MP +10 (or Rostrum Pumps)
    },

    --[[-------------------------------------------------------------------------------
        Perp: Perpetuation reduction gear.
        This gets equipped on top of your Idle set whenever an Avatar is summoned.
    -------------------------------------------------------------------------------]]--
    Perp = {
        Hands  = 'Carbuncle Mitts',     -- Carbuncle perpetuation -2
        Ring2  = 'Evoker\'s Ring',      -- Avatar perpetuation -1
        -- Body  = 'Austere Robe',      -- Avatar perpetuation -1
        -- Feet  = 'Evoker\'s Pigaches',-- Perp -1 on matching avatar day
    },

    --[[-------------------------------------------------------------------------------
        Resting: Worn when resting (/heal) to recover MP as quickly as possible.
        Pluto's / Dark Staff grants +10 MP recovered while resting (hMP).
    -------------------------------------------------------------------------------]]--
    Resting = {
        Main   = 'Dark Staff',          -- Pluto's Staff (hMP +10)
        Neck   = 'Checkered Scarf',     -- hMP +1
        Ear1   = 'Relaxing Earring',    -- hMP +2
        Ear2   = 'Boroka Earring',      -- hMP +1 (or Antivenom Earring)
        Body   = 'Errant Hpl.',         -- hMP +5 (or Seer's Tunic)
        Waist  = 'Hierarch Belt',       -- hMP +2
        Legs   = 'Baron\'s Slops',      -- hMP +1
    },

    --[[-------------------------------------------------------------------------------
        Stoneskin: Maximizes MND to hit the 350 damage absorption cap on Stoneskin.
        Stone Gorget raises the damage absorption cap by +30 HP.
    -------------------------------------------------------------------------------]]--
    Stoneskin = {
        Main   = 'Water Staff',         -- Neptune's Staff (MND +4/+5) or Kirin's Pole (MND +10)
        Neck   = 'Stone Gorget',        -- Enhances Stoneskin (+30 HP cap)
        Ear1   = 'Geist Earring',       -- MND +1
        Ear2   = 'Geist Earring',       -- MND +1
        Body   = 'Errant Hpl.',         -- MND +10
        Hands  = 'Devotee\'s Mitts',    -- MND +5
        Ring1  = 'Saintly Ring',        -- MND +2 (or Tamas Ring MND +5)
        Ring2  = 'Saintly Ring',        -- MND +2
        Back   = 'Rainbow Cape',        -- MND +3 (or White Cape +1)
        Waist  = 'Penitent\'s Rope',    -- MND +5
        Legs   = 'Errant Slops',        -- MND +7
        Feet   = 'Errant Pigaches',     -- MND +5
    },

    --[[-------------------------------------------------------------------------------
        Blood Pact - Delay:
        Equipped the exact moment you activate a Blood Pact ability to reduce recast time.
    -------------------------------------------------------------------------------]]--
    BP_Delay = {
        -- Head   = 'Summoner\'s Horn',  -- BP Delay -3 (Level 75)
        Body   = 'Austere Robe',        -- BP Delay -2
        Hands  = 'Summoner\'s Brcr.',   -- BP Delay -2 (AF2) or Austere Cuffs (-1)
        Legs   = 'Summoner\'s Spats',   -- BP Delay -2 (AF2) or Austere Slops (-1)
        Feet   = 'Summoner\'s Pgch.',   -- BP Delay -2 (AF2)
    },

    --[[-------------------------------------------------------------------------------
        Blood Pact - General / Base:
        Worn when your Avatar performs a Blood Pact.
        Boosts Summoning Magic Skill and Pet stats.
    -------------------------------------------------------------------------------]]--
    BloodPact = {
        Head   = 'Evoker\'s Horn',      -- Summoning Magic Skill +5
        Neck   = 'Summoning Torque',    -- Summoning Magic Skill +7
        Ear1   = 'Summoning Earring',   -- Summoning Magic Skill +3
        Body   = 'Evoker\'s Doublet',   -- Avatar Attack +10
        Hands  = 'Summoner\'s Brcr.',   -- Summoning Magic Skill +10
        Ring1  = 'Evoker\'s Ring',      -- Summoning Magic Skill +10
        Back   = 'Astute Cape',         -- Summoning Magic Skill +5
        Legs   = 'Evoker\'s Spats',     -- Avatar Acc +5, Summoning Magic Skill +3
        Feet   = 'Summoner\'s Pgch.',   -- Avatar Attack +7
    },

    --[[-------------------------------------------------------------------------------
        Blood Pact - Physical:
        For physical damage pacts (Predator Claws, Rush, Chaotic Strike, Eclipse Bite, etc.)
        Inherits from BloodPact set; add extra Pet Acc / Pet Atk here.
    -------------------------------------------------------------------------------]]--
    BP_Physical = {
        Head   = 'Shepherd\'s Bonnet',  -- Avatar Acc +5
        Body   = 'Evoker\'s Doublet',   -- Avatar Attack +10
        Legs   = 'Evoker\'s Spats',     -- Avatar Acc +5
        Feet   = 'Summoner\'s Pgch.',   -- Avatar Attack +7
    },

    --[[-------------------------------------------------------------------------------
        Blood Pact - Magical:
        For elemental nukes (Wind Blade, Geocrush, Heavenly Strike, Meteorite, etc.)
        Inherits from BloodPact set; add Pet Magic Atk / Summoning Skill here.
    -------------------------------------------------------------------------------]]--
    BP_Magical = {
        Head   = 'Evoker\'s Horn',      -- Summoning Magic Skill +5
        Body   = 'Austere Robe',        -- Avatar MAB +3
        Hands  = 'Summoner\'s Brcr.',   -- Summoning Magic Skill +10
        Feet   = 'Summoner\'s Pgch.',   -- Avatar Attack / MAB
    },

    --[[-------------------------------------------------------------------------------
        Blood Pact - Ward & Debuffs:
        For buffs (Aerial Armor, Earthen Ward, Shining Ruby) and enfeebles (Slowga, etc.)
        High Summoning Magic Skill increases buff duration and enfeeble landing rate.
    -------------------------------------------------------------------------------]]--
    BP_Ward = {
        Head   = 'Evoker\'s Horn',      -- Summoning Magic Skill +5
        Neck   = 'Summoning Torque',    -- Summoning Magic Skill +7
        Hands  = 'Summoner\'s Brcr.',   -- Summoning Magic Skill +10
        Ring1  = 'Evoker\'s Ring',      -- Summoning Magic Skill +10
        Back   = 'Astute Cape',         -- Summoning Magic Skill +5
        Legs   = 'Evoker\'s Spats',     -- Summoning Magic Skill +3
    },

    --[[-------------------------------------------------------------------------------
        Staff for each Avatar:
        Matching elemental staves reduce perpetuation cost by 2 MP/tick!
        Update these to HQ staves (Vulcan's, Aquilo's, etc.) whenever you get them.
    -------------------------------------------------------------------------------]]--
    Staff_Carbuncle     = { Main = 'Light Staff', Hands = 'Carbuncle Mitts' },
    Staff_Fenrir        = { Main = 'Dark Staff' },
    Staff_Diabolos      = { Main = 'Dark Staff' },
    Staff_Ifrit         = { Main = 'Fire Staff' },
    Staff_Titan         = { Main = 'Earth Staff' },
    Staff_Leviathan     = { Main = 'Water Staff' },
    Staff_Garuda        = { Main = 'Wind Staff' },
    Staff_Shiva         = { Main = 'Ice Staff' },
    Staff_Ramuh         = { Main = 'Thunder Staff' },

    -- Elemental Spirits
    Staff_LightSpirit   = { Main = 'Light Staff' },
    Staff_DarkSpirit    = { Main = 'Dark Staff' },
    Staff_FireSpirit    = { Main = 'Fire Staff' },
    Staff_EarthSpirit   = { Main = 'Earth Staff' },
    Staff_WaterSpirit   = { Main = 'Water Staff' },
    Staff_WindSpirit    = { Main = 'Wind Staff' },
    Staff_IceSpirit     = { Main = 'Ice Staff' },
    Staff_ThunderSpirit = { Main = 'Thunder Staff' },

    --[[-------------------------------------------------------------------------------
        Cure: Used when casting Cure spells (/WHM subjob).
        Light / Apollo's Staff provides +10% Cure Potency.
    -------------------------------------------------------------------------------]]--
    Cure = {
        Main   = 'Light Staff',         -- Apollo's Staff (+10% Cure Potency)
        Neck   = 'Justice Badge',       -- MND +3
        Ear1   = 'Geist Earring',       -- MND +1
        Ear2   = 'Geist Earring',       -- MND +1
        Body   = 'Errant Hpl.',         -- MND +10
        Hands  = 'Devotee\'s Mitts',    -- MND +5
        Legs   = 'Errant Slops',        -- MND +7
        Feet   = 'Errant Pigaches',     -- MND +5
    },

    --[[-------------------------------------------------------------------------------
        FastCast: Reduces spell casting time (precast).
    -------------------------------------------------------------------------------]]--
    FastCast = {
        Feet   = 'Rostrum Pumps',       -- Fast Cast +3%
        -- Ear1   = 'Loquac. Earring',  -- Fast Cast +2%
    },

    --[[-------------------------------------------------------------------------------
        Summoning: Equipped while casting an Avatar summoning spell.
    -------------------------------------------------------------------------------]]--
    Summoning = {
        Hands  = 'Carbuncle\'s Cuffs',  -- Summoning spell cast time -1 sec
        Feet   = 'Evoker\'s Boots',     -- Summoning spell cast time -1 sec
    },

    --[[-------------------------------------------------------------------------------
        Sneak & Invisible: Items that extend Sneak/Invis duration.
    -------------------------------------------------------------------------------]]--
    SneakInvis = {
        Back   = 'Skulker\'s Cape',
        Hands  = 'Dream Mittens +1',
        Feet   = 'Dream Boots +1',
    },
};

profile.Sets = sets;

--[[-----------------------------------------------------------------------------------
    Blood Pact categorization tables
-----------------------------------------------------------------------------------]]--
local MagicBP = T{
    'Meteorite', 'Stone II', 'Stone IV', 'Geocrush', 'Water II', 'Water IV', 'Grand Fall',
    'Aero II', 'Aero IV', 'Wind Blade', 'Fire II', 'Fire IV', 'Meteor Strike', 'Burning Strike',
    'Blizzard II', 'Blizzard IV', 'Heavenly Strike', 'Thunder II', 'Thunder IV', 'Thunderstorm',
    'Thunderspark', 'Nether Blast'
};

local PhysBP = T{
    'Poison Nails', 'Moonlit Charge', 'Somnolence', 'Punch', 'Rock Throw', 'Barracuda Dive',
    'Claw', 'Axe Kick', 'Shock Strike', 'Camisado', 'Regal Scratch', 'Crescent Fang',
    'Rock Buster', 'Tail Whip', 'Double Punch', 'Megalith Throw', 'Double Slap',
    'Eclipse Bite', 'Flaming Crush', 'Mountain Buster', 'Spinning Dive', 'Predator Claws',
    'Rush', 'Chaotic Strike'
};

local BuffBP = T{
    'Shining Ruby', 'Aerial Armor', 'Frost Armor', 'Rolling Thunder', 'Crimson Howl',
    'Lightning Armor', 'Ecliptic Growl', 'Glittering Ruby', 'Earthen Ward', 'Spring Water',
    'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Dream Shroud'
};

local DebuffBP = T{
    'Lunar Cry', 'Luncar Cry', 'Mewing Lullaby', 'Nightmare', 'Lunar Roar', 'Slowga',
    'Ultimate Terror', 'Sleepga', 'Eerie Eye'
};

--[[-----------------------------------------------------------------------------------
    Helper function: Equips appropriate Blood Pact set based on the pact being used
-----------------------------------------------------------------------------------]]--
local function HandlePetAction(petAction)
    if (petAction == nil) then return; end

    -- Clean the Blood Pact name of any trailing whitespace or non-standard characters
    local cleanName = string.gsub(petAction.Name, '[^%a%s%d%-]', '');
    cleanName = string.match(cleanName, '^%s*(.-)%s*$') or petAction.Name;

    if (MagicBP:contains(cleanName) or MagicBP:contains(petAction.Name)) then
        gFunc.EquipSet(gFunc.Combine(sets.BloodPact, sets.BP_Magical));
    elseif (PhysBP:contains(cleanName) or PhysBP:contains(petAction.Name)) then
        gFunc.EquipSet(gFunc.Combine(sets.BloodPact, sets.BP_Physical));
    elseif (BuffBP:contains(cleanName) or BuffBP:contains(petAction.Name) or
            DebuffBP:contains(cleanName) or DebuffBP:contains(petAction.Name)) then
        gFunc.EquipSet(gFunc.Combine(sets.BloodPact, sets.BP_Ward));
    else
        gFunc.EquipSet(sets.BloodPact);
    end
end

--[[-----------------------------------------------------------------------------------
    PROFILE EVENTS
-----------------------------------------------------------------------------------]]--

profile.OnLoad = function()
    -- Allows using the in-game command `/lac addset <setname>` to capture current gear into a set
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

--[[-----------------------------------------------------------------------------------
    HandleDefault: Evaluated continuously when idle, resting, or when pet status changes
-----------------------------------------------------------------------------------]]--
profile.HandleDefault = function()
    local player    = gData.GetPlayer();
    local pet       = gData.GetPet();
    local petAction = gData.GetPetAction();

    -- 1. If pet is currently performing a Blood Pact, keep Blood Pact gear on!
    if (petAction ~= nil) then
        HandlePetAction(petAction);
        return;
    end

    -- 2. Resting (/heal): Equip Resting MP gear (Pluto's Staff / hMP)
    if (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
        return;
    end

    -- 3. Avatar is summoned:
    if (pet ~= nil) then
        -- Base Idle gear
        gFunc.EquipSet(sets.Idle);

        -- Apply Perpetuation reduction gear
        gFunc.EquipSet(sets.Perp);

        -- Equip the elemental staff for this specific Avatar/Spirit
        local staffSet = sets['Staff_' .. pet.Name] or sets[pet.Name];
        if (staffSet ~= nil) then
            gFunc.EquipSet(staffSet);
        end
        return;
    end

    -- 4. No Avatar summoned: Standard Idle gear
    gFunc.EquipSet(sets.Idle);
end

--[[-----------------------------------------------------------------------------------
    HandleAbility: Called when you use a Job Ability (Blood Pact, etc.)
-----------------------------------------------------------------------------------]]--
profile.HandleAbility = function()
    local action = gData.GetAction();

    -- When you activate a Blood Pact, equip Delay gear to reduce the recast timer
    if (action.Type ~= nil and string.find(action.Type, 'Blood Pact')) then
        gFunc.EquipSet(sets.BP_Delay);
    end
end

--[[-----------------------------------------------------------------------------------
    HandleItem: Called when using items (Sneak/Invis tools, etc.)
-----------------------------------------------------------------------------------]]--
profile.HandleItem = function()
    local action = gData.GetAction();
    if (action.Name == 'Silent Oil' or action.Name == 'Prism Powder') then
        gFunc.EquipSet(sets.SneakInvis);
    end
end

--[[-----------------------------------------------------------------------------------
    HandlePrecast: Called before a spell starts casting
-----------------------------------------------------------------------------------]]--
profile.HandlePrecast = function()
    local action = gData.GetAction();

    -- Fast Cast to speed up spell casting
    if (action.Type == 'Spell') then
        gFunc.EquipSet(sets.FastCast);
    end
end

--[[-----------------------------------------------------------------------------------
    HandleMidcast: Called during spellcasting or when pet executes an action
-----------------------------------------------------------------------------------]]--
profile.HandleMidcast = function()
    local petAction = gData.GetPetAction();
    local action    = gData.GetAction();

    -- If the pet is executing a Blood Pact, equip the Blood Pact gear!
    if (petAction ~= nil) then
        HandlePetAction(petAction);
        return;
    end

    if (action == nil) then return; end

    -- Stoneskin
    if (action.Name == 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);

    -- Cure spells
    elseif (string.find(action.Name, 'Cur')) then
        gFunc.EquipSet(sets.Cure);

    -- Avatar Summoning spells: equip summoning gear and the avatar's staff
    elseif (action.Skill == 'Summoning') then
        gFunc.EquipSet(sets.Summoning);
        local staffSet = sets['Staff_' .. action.Name] or sets[action.Name];
        if (staffSet ~= nil) then
            gFunc.EquipSet(staffSet);
        end

    -- Sneak and Invisible spells
    elseif (action.Name == 'Sneak' or action.Name == 'Invisible') then
        gFunc.EquipSet(sets.SneakInvis);
    end
end

return profile;
