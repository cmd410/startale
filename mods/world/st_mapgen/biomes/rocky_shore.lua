minetest.register_biome({
    name = "mapgen:rocky_shore",
    node_top = "st_nodes:stone",
    depth_top = 1,
    node_filler = "st_nodes:stone",
    depth_filler = 2,
    node_riverbed = "st_nodes:stone",
    depth_riverbed = 2,
    y_max = 4,
    y_min = -12,
    heat_point = 40,
    humidity_point = 60,
})
