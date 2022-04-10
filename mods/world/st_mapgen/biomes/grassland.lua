minetest.register_biome({
    name = "mapgen:grassland",
    node_top = "st_nodes:dirt_with_grass",
    depth_top = 1,
    node_filler = "st_nodes:dirt",
    depth_filler = 2,
    node_riverbed = "st_nodes:sand",
    depth_riverbed = 2,
    y_max = 31000,
    y_min = 4,
    heat_point = 23,
    humidity_point = 50,
})
