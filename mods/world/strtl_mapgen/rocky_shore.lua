minetest.register_biome({
    name = "mapgen:rocky_shore",
    node_top = "strtl_nodes:stone",
    depth_top = 1,
    node_filler = "strtl_nodes:stone",
    depth_filler = 2,
    node_riverbed = "strtl_nodes:stone",
    depth_riverbed = 2,
    y_max = 4,
    y_min = -12,
    heat_point = 40,
    humidity_point = 60,
})
