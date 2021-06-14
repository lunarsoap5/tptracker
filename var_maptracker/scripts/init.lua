local variant = Tracker.ActiveVariantUID
local has_map = variant ~= "var_minimalist" and (not variant:find("itemsonly"))

Tracker:AddItems("items/common.json")
Tracker:AddItems("items/dungeon_items.json")
Tracker:AddItems("items/options.json")

ScriptHost:LoadScript("scripts/logic.lua")

if has_map then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLocations("locations/overworld.json")
	Tracker:AddLocations("locations/poes.json")
	Tracker:AddLocations("locations/bugs.json")
	Tracker:AddLocations("locations/shops.json")
    Tracker:AddLocations("locations/dung_reg.json")
    Tracker:AddLayouts("layouts/options.json")
    Tracker:AddLayouts("layouts/dungeon_grids_keysanity.json")
end


Tracker:AddLayouts("layouts/item_grids.json")
Tracker:AddLayouts("layouts/layouts.json")
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
