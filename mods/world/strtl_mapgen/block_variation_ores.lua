minetest.register_ore(
    {
        ore_type = "scatter",
        ore = "strtl_nodes:cobble",
        wherein = "strtl_nodes:stone",
        clust_scarcity = 8,
        clust_num_ores = 8,
        clust_size = 3,
        y_max = 31000,
        y_min = -31000,
        noise_threshold = 0.9,
        noise_params = {
            offset = 0,
            scale = 1,
            spread = {x = 10, y = 10, z = 10},
            seed = 23,
            octaves = 3,
            persistence = 0.7
        },
    }
)

minetest.register_ore(
    {
        ore_type = "scatter",
        ore = "strtl_nodes:mossycobble",
        wherein = "strtl_nodes:stone",
        clust_scarcity = 8,
        clust_num_ores = 8,
        clust_size = 3,
        y_max = 100,
        y_min = -100,
        noise_threshold = 0.95,
        noise_params = {
            offset = 0,
            scale = 1,
            spread = {x = 10, y = 10, z = 10},
            seed = 23,
            octaves = 3,
            persistence = 0.7
        },
    }
)