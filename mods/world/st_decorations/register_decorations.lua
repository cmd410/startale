minetest.register_decoration(
    {
        deco_type = "simple",
        place_on = {
            "st_nodes:dirt_with_grass",
            "st_nodes:sand",
            "st_nodes:stone",
            "st_nodes:mossystone"
        },
        sidelen = 8,
        fill_ratio = 0.02,
        y_min = -31000,
        y_max = 31000,
        decoration = {
            "st_decorations:pebbles",
            "st_decorations:pebbles_1",
            "st_decorations:pebbles_2",
            "st_decorations:mossypebbles",
            "st_decorations:mossypebbles_1",
            "st_decorations:mossypebbles_2"
        },
        height = 1,
        rotation = "random"
    }
)

minetest.register_decoration(
    {
        deco_type = "simple",
        place_on = "st_nodes:dirt_with_grass",
        sidelen = 8,
        fill_ratio = 0.5,
        y_min = -31000,
        y_max = 31000,
        decoration = {
            "st_decorations:grass",
            "st_decorations:grass_1",
            "st_decorations:grass_2"
        },
        height = 1,
        rotation = "random"
    }
)