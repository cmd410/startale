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
    spawn_chance=50,
    light_min=3,
    rarity=15
}

biome_lib.register_active_spawner(grass_biome)
biome_lib.register_on_generate(grass_biome, grass_nodes)
