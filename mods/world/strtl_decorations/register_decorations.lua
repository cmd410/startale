minetest.register_decoration(
    {
        deco_type = "simple",
        place_on = {
            "strtl_nodes:dirt_with_grass",
            "strtl_nodes:sand",
            "strtl_nodes:stone",
            "strtl_nodes:mossystone"
        },
        sidelen = 8,
        fill_ratio = 0.02,
        y_min = -31000,
        y_max = 31000,
        decoration = {
            "strtl_decorations:pebbles",
            "strtl_decorations:pebbles_1",
            "strtl_decorations:pebbles_2",
            "strtl_decorations:mossypebbles",
            "strtl_decorations:mossypebbles_1",
            "strtl_decorations:mossypebbles_2"
        },
        height = 1,
        rotation = "random"
    }
)

minetest.register_decoration(
    {
        deco_type = "simple",
        place_on = "strtl_nodes:dirt_with_grass",
        sidelen = 8,
        fill_ratio = 0.5,
        y_min = -31000,
        y_max = 31000,
        decoration = {
            "strtl_decorations:grass",
            "strtl_decorations:grass_1",
            "strtl_decorations:grass_2"
        },
        height = 1,
        rotation = "random"
    }
)