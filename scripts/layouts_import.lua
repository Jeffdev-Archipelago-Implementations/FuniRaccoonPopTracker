
Tracker:AddLayouts("layouts/settings_popup.json")
Tracker:AddLayouts("layouts/items.json")
if Tracker.ActiveVariantUID == "Flat Items Tracker" then
    Tracker:AddLayouts("layouts/item_grid_flat.json")
else
    Tracker:AddLayouts("layouts/item_grid_stacked.json")
end
Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
