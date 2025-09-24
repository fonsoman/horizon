local gcinclude = T{};

--[[-----------------------------------------------------------------------------------
    Elemental Staves
--]]-----------------------------------------------------------------------------------
gcinclude.ElementalStaff = {
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
};

--[[-----------------------------------------------------------------------------------
    Obis
--]]-----------------------------------------------------------------------------------
gcinclude.ElementalObi = {
    ['Fire'] = 'Karin Obi',
    ['Earth'] = 'Dorin Obi',
    ['Water'] = 'Suirin Obi',
    ['Wind'] = 'Furin Obi',
    ['Ice'] = 'Hyorin Obi',
    ['Thunder'] = 'Rairin Obi',
    ['Light'] = 'Korin Obi',
    ['Dark'] = 'Anrin Obi'
};

--[[-----------------------------------------------------------------------------------
    Spell Groupings
--]]-----------------------------------------------------------------------------------
gcinclude.MndDebuffs = T{ 'Slow', 'Paralyze', 'Silence' };
gcinclude.IntDebuffs = T{ 'Blind','Sleep', 'Sleep II', 'Sleepga', 'Sleepga II', 'Bind', 'Gravity', 'Dispel', 'Poison', 'Poison II' };
gcinclude.ElementalDebuffs = T{ 'Burn', 'Choke', 'Shock', 'Rasp', 'Drown', 'Frost' };

--[[-----------------------------------------------------------------------------------
    Day to Element Table
--]]-----------------------------------------------------------------------------------
gcinclude.DayElementTable = {
    ['Firesday'] = 'Fire',
    ['Earthsday'] = 'Earth',
    ['Watersday'] = 'Water',
    ['Windsday'] = 'Wind',
    ['Iceday'] = 'Ice',
    ['Lightningday'] = 'Thunder',
    ['Lightsday'] = 'Light',
    ['Darksday'] = 'Dark'
};

--[[-----------------------------------------------------------------------------------
    City Zones
--]]-----------------------------------------------------------------------------------
gcinclude.CityZones = T{    'Lower Jeuno', 'Upper Jeuno', 'Ru\'Lude Gardens', 'Port Jeuno', 
                        'Windurst Woods', 'Port Windurst', 'Windurst Waters', 'Windurst Walls', 'Heavens Tower',
                        'Bastok Markets', 'Bastok Mines', 'Metalworks', 'Port Bastok',
                        'Chateau d\'Oraguille', 'Northern San d\'Oria', 'Port San d\'Oria', 'Southern San d\'Oria' };

--[[-----------------------------------------------------------------------------------
    Weather/Day Check for Obi
        This function assigns a weight based on the day of the week and the weather
        You give this function a spell, and it returns the weight of that element
--]]-----------------------------------------------------------------------------------
function gcinclude.ObiCheck(spell)

    local element = spell.Element;
    local zone = gData.GetEnvironment();
    local weight = 0;
    
    --[[-----------------------------------------------------------------------------------
        Obi: Table of Bad Elements for each day
    --]]-----------------------------------------------------------------------------------
    local badEle = {
        ['Fire'] = 'Water',
        ['Earth'] = 'Wind',
        ['Water'] = 'Thunder',
        ['Wind'] = 'Ice',
        ['Ice'] = 'Fire',
        ['Thunder'] = 'Earth',
        ['Light'] = 'Dark',
        ['Dark'] = 'Light'
    };
    
    --[[-----------------------------------------------------------------------------------
        Obi: Update weight based on Day
    --]]-----------------------------------------------------------------------------------
    if (DayElementTable[zone.Day] == element) then
        weight = weight + 1;
    elseif (DayElementTable[zone.Day] == badEle[element]) then
        weight = weight - 1;
    end
    
    --[[-----------------------------------------------------------------------------------
        Obi: Update weight based on Weather
    --]]-----------------------------------------------------------------------------------
    if string.find(zone.Weather, element) then
        if string.find(zone.Weather, 'x2') then
            weight = weight + 2;
        else
            weight = weight + 1;
        end
    elseif string.find(zone.Weather, badEle[element]) then
        if string.find(zone.Weather, 'x2') then
            weight = weight - 2;
        else
            weight = weight - 1;
        end
    end    
    
    return weight;
end

return generic