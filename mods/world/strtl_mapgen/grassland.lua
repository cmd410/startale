minetest.register_biome({
    name = "mapgen:grassland",
    node_top = "strtl_nodes:dirt_with_grass",
    depth_top = 1,
    node_filler = "strtl_nodes:dirt",
    depth_filler = 2,
    node_riverbed = "strtl_nodes:sand",
    depth_riverbed = 2,
    y_max = 31000,
    y_min = 4,
    heat_point = 50,
    humidity_point = 50,
})
