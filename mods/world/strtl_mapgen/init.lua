
-- Essential aliases
minetest.register_alias("mapgen_stone", "strtl_nodes:stone")
minetest.register_alias("mapgen_water_source", "strtl_nodes:water_source")
minetest.register_alias("mapgen_river_water_source", "strtl_nodes:river_water_source")

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_biome({
    name = "mapgen:grassland",
    node_top = "strtl_nodes:dirt_with_grass",
    depth_top = 1,
    node_filler = "strtl_nodes:dirt",
    depth_filler = 2,
    node_riverbed = "strtl_nodes:sand",
    depth_riverbed = 2,
    --node_dungeon = "strtl_nodes:cobble",
    --node_dungeon_alt = "strtl_nodes:cobble",
    --node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 4,
    heat_point = 50,
    humidity_point = 50,
})