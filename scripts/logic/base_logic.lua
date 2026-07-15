
-- this is the file to put all your custom logic functions into.
-- if you dont want to use the json based logic you can switch to a graph-based logic method.
-- the needed functions for that are in `/scripts/logic/graph_logic/logic_main.lua`.



-- function <name> (<parameters if needed>)
--     <actual code>
--     <indentations are just for readability>
-- end
--

-- Act / Museum access is gated on how many dumpster items have been collected.
-- These counts are player-configurable options in the apworld, so they are not
-- baked into the access_rules anymore. The defaults below match the apworld
-- defaults and are overwritten per-seed from slot_data.options in onClear
-- (see scripts/autotracking/archipelago.lua).
DEFAULT_ACT_THRESHOLDS = { museum = 15, act2 = 25, act3 = 35, act4 = 50 }
ACT_THRESHOLDS = ACT_THRESHOLDS or {}

-- Access-rule helper used from the location JSONs as "$has_act|museum" etc.
function has_act(act)
    local dumpster = Tracker:FindObjectForCode("dumpster")
    local count = dumpster and dumpster.AcquiredCount or 0
    local needed = ACT_THRESHOLDS[act] or DEFAULT_ACT_THRESHOLDS[act] or 0
    return A(count >= needed)
end

-- Access-rule helper for Lugh-quest area locking.
function lugh_lock(item, amount)
    if Tracker:ProviderCountForCode("lugh") == 0 then
        return ACCESS_NORMAL
    end
    return A(Tracker:ProviderCountForCode(item) >= (tonumber(amount) or 1))
end
