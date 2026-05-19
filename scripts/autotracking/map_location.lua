MAP_LOCATION = {
    ["Norwich"]                     = "Norwich",
    ["Water Zone"]                  = "Water Zone",
    ["Raccoon Central Station"]     = "Raccoon Central Station",
    ["Gym Outside"]                 = "Gym Outside",
    ["Gym Inside"]                  = "Gym Inside",
    ["Rackheath"]                   = "Rackheath",
    ["Museum"]                      = "Museum",
    ["Chamber"]                     = "Chamber",
    ["Chicken Farm"]                = "Chicken Farm",
    ["Church"]                      = "Church",
    ["Hat Store"]                   = "Hat Store",
    ["Behrman Speedway"]            = "Behrman Speedway",
    ["Cleaners"]                    = "Cleaners",
    ["Tyre World"]                  = "Tyre World",
    ["Beenie HQ Front"]             = "Beenie HQ Front",
    ["Beenie HQ Back"]              = "Beenie HQ Back",
    ["Beenie HQ Inside"]            = "Beenie HQ Inside",
    ["Beenie Factory"]              = "Beenie Factory",
    ["The Process"]                 = "The Process",
    ["The Machine"]                 = "The Machine",
    ["Goo Office"]                  = "Office",
    ["Howth Start"]                 = "Howth Start",
    ["Howth End"]                   = "Howth End",
    ["Fish Vore"]                   = "Fish Vore",
    ["Fields"]                      = "Fields",
    ["Beenie's Ascension"]          = "Beenie's Ascension",
    ["Blimbo Village Start"]        = "Blimbo Village Start",
    ["Blimbo Village Town"]         = "Blimbo Village Town",
    ["Bildal Mines"]                = "Bildal Mines",
    ["Trasco Carpark"]              = "Trasco Carpark",
    ["Trasco Carpark Piss Shrine"]  = "Trasco Carpark Piss Shrine",
    ["Petrol Station"]              = "Petrol Station",
    ["Garden"]                      = "Garden",
    ["Blimbo City Bottom Main"]     = "Blimbo City Bottom Main",
    ["Blimbo City Girders"]         = "Blimbo City Girders",
    ["Blimbo City Middle"]          = "Blimbo City Middle",
    ["Blimbo City Middle Back"]     = "Blimbo City Middle Back",
    ["Blimbo City Middle Casino"]   = "Blimbo City Middle Casino",
    ["Blimbo City PURGATORY"]       = "Blimbo City PURGATORY",
    ["Blimbo City Pub"]             = "Blimbo City Pub",
    ["Blimbo City Reactor"]         = "Blimbo City Reactor",
    ["Blimbo City Top"]             = "Blimbo City Top",
    ["Blimbo City Upper Towers"]    = "Blimbo City Upper Towers",
    ["Forest"]                      = "Forest",
    ["Mikk Barge"]                  = "Mikk Barge",
    ["Cricket"]                     = "Cricket",
    ["Canyon"]                      = "Canyon",
    ["Pharmacy"]             = "Pharmacy",
    ["Municipal Wastes"]            = "Municipal Wastes",
    ["Desert"]                      = "Desert",
    ["Dry Zone"]                    = "Dry Zone",
    ["Norwich Ruins"]               = "Norwich Ruins",
    ["The Gully"]                   = "The Gully",
    ["Cliffs of Nowher"]            = "Cliffs of Nowher",
    ["FRIDGE WORLD"]                = "FRIDGE WORLD",
}

function UpdateMapLocation(value)
    if not value then return end
    local map_name = MAP_LOCATION[value]
    if map_name then
        Tracker:UiHint("map_location", map_name)
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING then
            print(string.format("UpdateMapLocation: switching to map '%s' (from '%s')", map_name, value))
        end
    else
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING then
            print(string.format("UpdateMapLocation: no map found for location '%s'", tostring(value)))
        end
    end
end
