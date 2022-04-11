local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

-- Essential aliases
minetest.register_alias("mapgen_stone", "st_nodes:stone")
minetest.register_alias("mapgen_water_source", "st_nodes:water_source")
minetest.register_alias("mapgen_river_water_source", "st_nodes:river_water_source")

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()


-- Register biomes
dofile(modpath .. "/biomes/grassland.lua")
dofile(modpath .. "/biomes/beach.lua")
dofile(modpath .. "/biomes/rocky_shore.lua")

dofile(modpath .. "/block_variation_ores.lua")

-- Decorations
dofile(modpath .. "/decorations/plantlife.lua")
dofile(modpath .. "/decorations/trees.lua")
dofile(modpath .. "/decorations/mossynodes.lua")
dofile(modpath .. "/decorations/pebbles.lua")
