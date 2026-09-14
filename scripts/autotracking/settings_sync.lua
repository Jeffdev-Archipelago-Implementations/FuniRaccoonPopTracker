SANITY_KEYS = {
    ["gemsanity"]  = "gem",
    ["eurosanity"] = "euro",
    ["hatsanity"]  = "hat",
    ["catsanity"]  = "cat",
    ["dumpster_weight_blocking"] = "keiskip",
    ["lugh_quest_locking"] = "lugh"
}

-- "keiskip" should be off if weight blocking is on
INVERTED_SANITY_KEYS = {
    ["dumpster_weight_blocking"] = true
}

function UpdateSanitySetting(key, value)
    if value == nil then return end
    local code = SANITY_KEYS[key]
    if not code then return end
    local item = Tracker:FindObjectForCode(code)
    if not item then
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING then
            print(string.format("UpdateSanitySetting: could not find item for code '%s'", code))
        end
        return
    end
    -- value may be boolean true/false or integer 1/0
    local enabled = (value == true or value == 1)
    if INVERTED_SANITY_KEYS[key] then
        enabled = not enabled
    end
    item.Active = enabled
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING then
        print(string.format("UpdateSanitySetting: set '%s' Active = %s (from key '%s' = %s)", code, tostring(item.Active), key, tostring(value)))
    end
end
