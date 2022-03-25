local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

-- Essential aliases
minetest.register_alias("mapgen_stone", "strtl_nodes:stone")
minetest.register_alias("mapgen_water_source", "strtl_nodes:water_source")
minetest.register_alias("mapgen_river_water_source", "strtl_nodes:river_water_source")

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()


-- Register biomes
dofile(modpath .. "/grassland.lua")
dofile(modpath .. "/beach.lua")
