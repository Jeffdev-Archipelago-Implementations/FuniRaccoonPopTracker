-- Each value is a list of tab titles to activate top-down (parent first, then child)
MAP_LOCATION = {
    ["NORWICH"]             = {"Act 1", "Norwich"},
    ["GYM_INSIDE"]          = {"Act 1", "Gym"},
    ["SECRET_UNDERGROUND"]  = {"Act 2", "Beenie HQ"},
    ["CHICKEN_LEVEL"]       = {"Act 1", "Chicken Farm"},
    ["CLEANERS"]            = {"Act 1", "Cleaners"},
    ["BLIMBO_CITY"]         = {"Act 3", "Blimbo City", "Bottom Main"},
    ["FISH_INSIDES"]        = {"Act 2", "Fish Vore"},
    ["EVIL_FACTORY"]        = {"Act 2", "Beenie Factory"},
    ["MUSEUM"]              = {"Act 1", "Museum"},
    ["TRAIN_STATION"]       = {"Act 1", "Raccoon Central Station"},
    ["OFFICE_START"]        = {"Act 2", "Goo Office"},
    ["WATER_ZONE"]          = {"Act 1", "Da Water Zone"},
    ["MONITOR_ROOM"]        = {"Act 1", "Chamber"},
    ["WAITING_ROOM"]        = {"Act 3", "Blimbo City", "PURGATORY"},
    ["CRICKET_PITCH"]       = {"Act 3", "Cricket"},
    ["RBMK"]                = {"Act 3", "Blimbo City", "Reactor"},
    ["BLIMBO_VILLAGE"]      = {"Act 3", "Blimbo Village"},
    ["LONG_OFFICE"]         = {"Act 2", "Goo Office"},
    ["FIELDS"]              = {"Act 2", "Fields"},
    ["TREE_LEVEL"]          = {"Act 3", "Forest"},
    ["BEENIE_FACTORY"]      = {"Act 2", "Beenie Factory"},
    ["BEENIE_FACTORY_P2"]   = {"Act 2", "Beenie Factory"},
    ["BEENIE_JESUS"]        = {"Act 2", "Beenie's Ascension"},
    ["INSIDE_THE_MACHINE"]  = {"Act 2", "THE MACHINE"},
    ["HAPPY_FACTORY"]       = {"Act 2", "Beenie HQ"},
    ["CENTRAL_STATION"]     = {"Act 1", "Raccoon Central Station"},
    ["HAT_STORE"]           = {"Act 1", "Hat Store"},
    ["HOWTH"]               = {"Act 2", "Howth"},
    ["FRIDGE_WORLD"]        = {"Act 3", "FRIDGE WORLD"},
    ["GARDEN_TABLE"]        = {"Act 3", "Garden"},
    ["TYRE_SHOP"]           = {"Act 1", "Tyre World"},
    ["CAVE"]                = {"Act 3", "Bildal Mines"},
    ["BLIMBO_FOREST"]       = {"Act 3", "Forest"},
    ["PUB"]                 = {"Act 3", "Blimbo City", "Pub"},
    ["BEENIE_CHURCH"]       = {"Act 1", "Church"},
    ["ACT_1_CLUSTER"]       = {"Act View", "Act 1 Cluster"},
    ["ACT_2_CLUSTER"]       = {"Act View", "Act 2 Cluster"},
    ["ACT_3_CLUSTER"]       = {"Act View", "Act 3 Cluster"},
    ["DESERT"]              = {"Act 4", "Desert"},
    ["PETROL_STATION"]      = {"Act 3", "Petrol Station"},
    ["NORWICH_RUINS"]       = {"Act 4", "Norwich Ruins"},
    ["SALMON_OF_KNOWLEDGE"] = {"Act 4", "Salmon of Knowledge"},
    ["DESERT_CONNECTION"]   = {"Act 4", "Municipal Wastes"},
    ["GULLY"]               = {"Act 4", "Gully"},
    ["CANYON"]              = {"Act 4", "Canyon"},
    ["DRY_ZONE"]            = {"Act 4", "Da Dry Zone"},
    ["PHARMACY"]            = {"Act 4", "Pharmacy"},
    ["BEHRMAN_RACETRACK"]   = {"Act 1", "Behrman Speedway"},
    ["MIKKBARGE"]           = {"Act 3", "Mikk Barge"},
    ["GOO_PARADISE"]        = {"Act 2", "Goo Office"},
    ["WHEAT_FIELD"]         = {"Act 2", "Fields"},
    ["CLIFFS_OF_NOWHER"]    = {"Act 4", "Cliffs of Nowher"},
}

function UpdateMapLocation(value)
    if not value then return end
    local tabs = MAP_LOCATION[value]
    if tabs then
        for _, tab in ipairs(tabs) do
            Tracker:UiHint("ActivateTab", tab)
        end
        print(string.format("UpdateMapLocation: switching to '%s' (from '%s')", tabs[#tabs], value))
    else
        print(string.format("UpdateMapLocation: no map found for location '%s'", tostring(value)))
    end
end
