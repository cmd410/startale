local grass_nodes = {
    "st_nodes:grass",
    "st_nodes:grass_1",
    "st_nodes:grass_2",
}

local grow_plants_on = {
    "st_nodes:dirt_with_grass"
}

local grass_biome = {
    spawn_plants=grass_nodes,
    spawn_surfaces = grow_plants_on,
    surface=grow_plants_on,
    spawn_delay=60,
    spawn_chance=15,
    light_min=3,
    rarity=3,
    max_count=125,

    min_elevation=1,
    max_elevation=31000
}

biome_lib.register_active_spawner(grass_biome)

--biome_lib.register_on_generate(grass_biome, grass_nodes)
-- Registering as minetest decoration because
-- biome_lib.register_on_generate just doesn't cut it density-wise
minetest.register_decoration(
    {
        deco_type="simple",
        decoration=grass_nodes,
        place_on=grow_plants_on,
        fill_ratio=0.6
    }
)
