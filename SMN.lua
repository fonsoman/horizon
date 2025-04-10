local profile = {};	
	
local sets = {
	Idle = {
		Main = 'Earth Staff',
		Ammo = 'Hedgehog Bomb',
		Head = 'Faerie Hairpin',
		Neck = 'Uggalepih Pendant',
		Ear1 = 'Geist Earring',
		Ear2 = 'Morion Earring',
		Body = 'Errant Hpl.', -- DEF 42 Emnity -3
		Hands = 'Zenith Mitts',
		Ring1 = 'Tamas Ring',
		Ring2 = 'Evoker\'s Ring',
		Back = 'Summoner\'s Cape',
		Waist = 'Hierarch Belt',
		Legs = 'Summoner\'s Spats',
		Feet = 'Summoner\'s Pgch.'
	},

	Idle_50 =  {
	    Main = 'Solid Wand', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
		Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe', --
        Hands = 'Carbuncle Mitts', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Skulker\'s Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wonder Braccae', --
        Feet = 'Seer\'s Pumps', --
	},

	Idle_40 =  {
	    Main = 'Solid Wand', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
		Head = 'Lgn. Circlet', -- MP 5
        Neck = 'Black Neckerchief', --
        Ear1 = 'Geist Earring', -- MP 5, MND 1
        Ear2 = 'Morion Earring', -- MP 4
        Body = 'Ryl.Sqr. Robe', --
        Hands = 'Carbuncle Mitts', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Black Cape +1', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = 'Wonder Braccae', --
        Feet = 'Seer\'s Pumps', --
	},

	Idle_30 =  {
	    Main = '', -- 
        Sub  = 'Beater\'s Aspis', -- DEF 3
        Ammo = 'Sweet Satchet', -- 
		Head = 'Dodge Headband', --
        Neck = 'Black Neckerchief', --
        Ear1 = '', --
        Ear2 = 'Morion Earring', -- MP 4
        Body = '', --
        Hands = 'Carbuncle Mitts', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Astral Ring', -- MP 25
        Back = 'Cotton Cape', --
        Waist = 'Mrc.Cpt. Belt', --
        Legs = '', --
        Feet = 'Seer\'s Pumps', --
	},

	Idle_20 =  {
	    Main = 'Yew Wand +1', -- 
        Sub  = 'She-Slime Shield', -- 
        Ammo = 'Fortune Egg', -- 
		-- Head = '', --
        Neck = 'Black Neckerchief', --
        -- Ear1 = '', --
        -- Ear1 = '', --
        Body = 'Black Tunic', --
        Hands = 'Carbuncle Mitts', --
        Ring2 = 'Astral Ring', -- MP 25
        Ring2 = 'Windurstian Ring', -- MP 3
        Back = 'Cotton Cape', --
        Waist = 'Friar\'s Rope', --
        Legs = 'Baron\'s Slops', --
        Feet = 'Light Soleas', --
	},
	
	Perp = {
		Body = 'Austere Robe', --1 Perp
        -- Hands = 'Nashira Gages', --1 Perp
        Ring2 = 'Evoker\'s Ring', --1 Perp
		-- Feet = 'Evoker\'s Pigaches +1',
	},
	
   Resting = {
		Main = 'Dark Staff',
        -- Head = '',
        Neck = 'Checkered Scarf',
        Body = 'Errant Hpl.',
        -- Hands = '',
        --Ring1 = '',
        --Ring2 = '',
        Ear1 = 'Relaxing Earring', -- hMP 2
        Ear2 = 'Boroka Earring', -- hMP 1
        -- Back = '',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
        -- Feet = ''
	},

	Resting_50 = {
        Main = 'Pilgrim\'s Wand', -- hMP 2
        Sub = 'Beater\'s Aspis',
        Ammo = 'Fortune Egg', -- MP +1%
		Head = 'Gold Hairpin', -- MP 30
        Neck = 'Black Neckerchief',
        Ear1 = 'Geist Earring', -- MP 5
        Ear2 = 'Boroka Earring', -- hMP 1
        Body = 'Seer\'s Tunic', -- hMP 1 MP 8
        Hands = 'Carbuncle Mitts', --
        Ring1 = 'Tamas Ring', -- MP 20
        Ring2 = 'Ether Ring', -- MP 30
        Back = 'Skulker\'s Cape',
        Waist = 'Friar\'s Rope', -- MP 5
        Legs = 'Baron\'s Slops', -- hMP 1
        Feet = 'Seer\'s Pumps', -- MP 4
	},
	
	Nuke = {
		
	},
	
	Cure = {
		Main = 'Light Staff',
		Sub = '',
		Range = '',
		Ammo = 'Hedgehog Bomb',
		Head = 'Bastokan Circlet',
		Neck = 'Justice Badge',
		Ear1 = 'Geist Earring',
		Ear2 = 'Geist Earring',
		Body = 'Errant Hpl.',
		Hands = 'Mycophile Cuffs',
		Ring1 = 'Tamas Ring',
		Ring2 = 'Mana Ring',
		Back = 'White Cape +1',
		Waist = 'Friar\'s Rope',
		Legs = 'Errant Slops',
		Feet = 'Seer\'s Pumps +1' 
	},
	
	Stoneskin = {
		Main = 'Solid Wand',
        Sub = 'Beater\'s Aspis',
        -- Ammo = 'Hedgehog Bomb',
        Head = 'Lgn. Circlet', -- MND 1
        Neck = 'Justice Badge', -- MND 3
        Ear1 = 'Geist Earring', -- MND 1
        -- Ear2 = 'Geist Earring',
        Body = 'Errant Hpl.', -- MND 10
        Hands = 'Devotee\'s Mitts', -- MND 5
        Ring1 = 'Tamas Ring', -- MND 5
        Ring2 = 'Kshama Ring No.9', -- MND 3
        Back = 'Rainbow Cape', -- MND 3
        Waist = 'Penitent\'s Rope', -- MND 5
        Legs = 'Errant Slops', -- MND 7
        Feet = 'Errant Pigaches' -- MND 5
	},
	
	FastCast = {
		-- Ear1 = 'Loquac. Earring',
		Head = 'Nashira Turban',
		-- Body = 'Nashira Manteel',
		-- Hands = 'Nashira Gages',
		-- Waist = 'Swift Belt',
		-- Legs = 'Nashira Seraweels',
		Feet = 'Rostrum Pumps',
	},
	
	petMAB = {
		Head = 'Shep. Bonnet', --+5 Accuracy
        -- Body = 'Shep. Doublet', --+3 MAB
        Hands = 'Summoner\'s Brcr.', --Accuracy
        -- Legs = 'Evoker\'s Spats', --Accuracy
        Feet = 'Summoner\'s Pgch.', --Accuracy
		-- Neck = 'Smn. Torque', --+7 Skill
		Ring2 = 'Evoker\'s Ring', --+10 Skill
		-- Ear1 = 'Smn. Earring', --+3 Skill
	},
	
	petAtk = {
		Head = 'Shep. Bonnet', --+5 Accuracy
        Body = 'Summoner\'s Dblt.', --
        Hands = 'Summoner\'s Brcr.', --Accuracy
        -- Legs = 'Evoker\'s Spats', --Accuracy
        Feet = 'Summoner\'s Pgch.', --Attack
		-- Neck = 'Smn. Torque', --+7 Skill
		Ring2 = 'Evoker\'s Ring', --+10 Skill
		Ear1 = 'Smn. Earring', --+3 Skill
	},
	
	SummonSkill = {
		-- Main = 'Bahamut\'s Staff', --+5 Skill
		-- Head = 'Evoker\'s Horn', --+5 Skill
        Hands = 'Summoner\'s Brcr.', --+10 Skill
		-- Legs = 'Austere Slops', --+3 Skill
        -- Feet = 'Nashira Crackows', --+5 Skill
        -- Neck = 'Smn. Torque', --+7 Skill
		-- Back = 'Astute Cape', --+5 Skill
		Ring2 = 'Evoker\'s Ring', --+10 Skill
		-- Ear1 = 'Smn. Earring', --+3 Skill
	},
	
	petMacc = {
		Main = '',
		Sub = '',
		Range = '',
		Ammo = '',
		Head = '',
		Neck = '',
		Ear1 = '',
		Ear2 = '',
		Body = '',
		Hands = '',
		Ring1 = '',
		Ring2 = '',
		Back = '',
		Waist = '',
		Legs = '',
		Feet = ''
	},
	
	BPDelay = {
		-- Head = 'Summoner\'s Horn', --3 Delay 'Austere Hat', --1 Delay
		Body = 'Summoner\'s Dblt.', --3 Delay 'Yinyang Robe'
        Hands = 'Summoner\'s Brcr.', --2 Delay
		-- Hands = 'Austere Cuffs', --1 Delay
        Legs = 'Summoner\'s Spats', --2 Delay
        Feet = 'Summoner\'s Pgch.' -- 2 Delay
    },
	
     SneakInvis = {
        Back = 'Skulker\'s Cape',
		Feet = 'Dream Boots +1',
		Hands = 'Dream Mittens +1',
    },
    
};

profile.Sets = sets;

local Settings = {
     CurrentLevel = 0,
};

--change the staff names here when you get HQ staves
local ElementalStaff = {
    ['Fire'] = 'Fire Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
};

--Bloodpact Lists. I have flaming crush in the PhysicalBP list which may not be optimal
local MagicBP = T{'Meteorite','Stone II','Stone IV','Geocrush','Water II','Water IV','Grand Fall','Aero II','Aero IV','Wind Blade','Fire II','Fire IV','Meteor Strike','Burning Strike','Blizzard II','Blizzard IV','Heavenly Strike','Thunder II','Thunder IV','Thunderstorm','Thunderspark'};
local PhysBP = T{'Poison Nails','Moonlit Charge','Somnolence','Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Regal Scratch','Crescent Fang','Rock Buster','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite','Flaming Crush','Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike'};
local BuffBP = T{'Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud'};
local DebuffBP = T{'Luncar Cry','Mewing Lullaby','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Eerie Eye'};

--[[-----------------------------------------------------------------------------------
    City Zones
--]]-----------------------------------------------------------------------------------
local CityZones = T{    'Lower Jeuno', 'Upper Jeuno', 'Ru\'Lude Gardens', 'Port Jeuno', 
                        'Windurst Woods', 'Port Windurst', 'Windurst Waters', 'Windurst Walls', 'Heavens Tower',
                        'Bastok Markets', 'Bastok Mines', 'Metalworks', 'Port Bastok',
                        'Chateau d\'Oraguille', 'Northern San d\'Oria', 'Port San d\'Oria', 'Southern San d\'Oria' };

--petElement gets set when you cast an avatar so we can match it to day/weather for relic armor
local petElement = 'Light';

local function HandlePetAction(PetAction)
	--There is an extra character somewhere coming through in PetAction.Name
	local BPName = PetAction.Name;
	if MagicBP:contains(BPName) then
		gFunc.EquipSet(sets.petMAB);
	elseif PhysBP:contains(BPName) then
		gFunc.EquipSet(sets.petAtk);
	elseif BuffBP:contains(BPName) then
		gFunc.EquipSet(sets.SummonSkill);
	elseif DebuffBP:contains(BPName) then
		gFunc.EquipSet(sets.petMacc);
	end
end

local function SetMacros(book, set)
	AshitaCore:GetChatManager():QueueCommand(2, '/macro book '..book);
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set '..set);
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	(function() AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6'); end):once(3);
	(function() AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1'); end):once(3);
	(function() AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 020'); end):once(3);
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
    local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	local player = gData.GetPlayer();
	local env = gData.GetEnvironment();
	local pet = gData.GetPet();
	local combinedSet = T{};
	
	if (myLevel ~= Settings.CurrentLevel) then
		gFunc.EvaluateLevels(profile.Sets, myLevel);
		Settings.CurrentLevel = myLevel;
	end
	
	if (petAction ~= nil) then
		HandlePetAction(petAction);
		return;
	end
	
	if (player.Status == 'Resting') then
		gFunc.EquipSet(sets.Resting);
		if (player.MainJobSync <= 50) then
			gFunc.EquipSet(sets.Resting_50);
		end
	elseif (pet == nil) then
		if (player.MainJobSync == 75) then
			gFunc.EquipSet(sets.Idle);
		elseif (player.MainJobSync >= 50) then
			combinedSet = gFunc.Combine(sets.Idle_50, sets.Idle);
			gFunc.EquipSet(combinedSet);
		elseif (player.MainJobSync >= 40) then
			combinedSet = gFunc.Combine(sets.Idle_40, sets.Idle_50);
			gFunc.EquipSet(combinedSet);
		elseif (player.MainJobSync >= 30) then
			combinedSet = gFunc.Combine(sets.Idle_30, sets.Idle_40);
			gFunc.EquipSet(combinedSet);
		elseif (player.MainJobSync >= 20) then
			combinedSet = gFunc.Combine(sets.Idle_20, sets.Idle_30);
			gFunc.EquipSet(combinedSet);
		else
			gFunc.EquipSet(sets.Idle_20);
		end
		if (CityZones:contains(env.Area)) then
			gFunc.Equip('body', 'Ducal Aketon');
		end
	else
		-- TODO: Use Combine function to combine these sets
		gFunc.EquipSet(sets.Idle);
		gFunc.EquipSet(sets.Perp);
		-- if (Settings.CurrentLevel < 51) then
		-- 	gFunc.Equip('main', 'Dragon Staff');
		-- elseif Settings.CurrentLevel == 75 then
		-- 	gFunc.Equip('main', 'Bahamut\'s Staff');
		if pet.Name == 'Carbuncle' then
			gFunc.Equip('main','Light Staff');
			gFunc.Equip('hands','Carbuncle Mitts');
			petElement = 'Light';
		elseif pet.Name == 'Ifrit' then
			gFunc.Equip('main','Fire Staff');
			petElement = 'Fire';
		elseif pet.Name == 'Titan' then
			gFunc.Equip('main','Earth Staff');
			petElement = 'Earth';
		elseif pet.Name == 'Leviathan' then
			gFunc.Equip('main','Water Staff');
			petElement = 'Water';
		elseif pet.Name == 'Garuda' then
			gFunc.Equip('main','Wind Staff');
			petElement = 'Wind';
		elseif pet.Name == 'Shiva' then
			gFunc.Equip('main','Aquilo\'s Staff');
			petElement = 'Ice';
		elseif pet.Name == 'Ramuh' then
			gFunc.Equip('main','Jupiter\'s Staff');
			petElement = 'Thunder';
		elseif pet.Name == 'Fenrir' then
			gFunc.Equip('main','Dark Staff');
			petElement = 'Dark';
		elseif pet.Name == 'Diabolos' then
			gFunc.Equip('main','Dark Staff');
			petElement = 'Dark';
		end
		
		if (env.DayElement == petElement) then
			gFunc.Equip('body','Summoner\'s Dblt.');
		end
		
		if (env.WeatherElement == petElement) then
			gFunc.Equip('head','Summoner\'s Horn');
		end
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	if action.Type:contains('Blood Pact') then
		gFunc.EquipSet(sets.BPDelay);
	end
end

profile.HandleItem = function()
    local action = gData.GetAction();
    if (action.Name == 'Silent Oil') then
        gFunc.Equip('Feet', 'Dream Boots +1');
		gFunc.Equip('Back', 'Skulker\'s Cape');
    elseif (action.Name == 'Prism Powder') then
        gFunc.Equip('Hands', 'Dream Mittens +1');
		gFunc.Equip('Back', 'Skulker\'s Cape');
	elseif (action.Name == 'Orange Juice') then
        gFunc.Equip('Legs', 'Dream Trousers +1');
    end
end

profile.HandlePrecast = function()
    local action = gData.GetAction();
	
	gFunc.EquipSet(sets.FastCast);
	if action.Skill == 'Summoning' then
		gFunc.Equip('Hands', 'Carbuncle\'s Cuffs');
		gFunc.Equip('Feet', 'Evoker\'s Boots');
	end
end

profile.HandleMidcast = function()
    local petAction = gData.GetPetAction();
	local action = gData.GetAction();
	
	if (petAction ~= nil) then
		HandlePetAction(petAction);
		return;
    end
        
    if action.Name:contains('Cur') then
        gFunc.EquipSet(sets.Cure);
    elseif action.Name=='Stoneskin' then
        gFunc.EquipSet(sets.Stoneskin);
    elseif action.Skill == 'Elemental Magic' then
        gFunc.EquipSet(sets.Nuke);
    elseif action.Skill == 'Summoning' then
		gFunc.EquipSet(sets.SummonSkill);
	elseif action.Name=='Sneak' then
        gFunc.EquipSet(sets.SneakInvis);
	elseif action.Name=='Invisible' or string.match(action.Name, 'Tonko') then
        gFunc.EquipSet(sets.SneakInvis);
	end

    -- if (action.ActionType == 'Spell' and action.Skill ~= 'Summoning') then
    --     gFunc.Equip('main', ElementalStaff[action.Element]);
    -- end

end

return profile;