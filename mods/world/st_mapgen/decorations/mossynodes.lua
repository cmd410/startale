local moss_sources = {
    "st_nodes:water_flowing",
    "st_nodes:water_source",
    "st_nodes:mossystone",
    "st_nodes:mossycobble",
    "st_nodes:dirt_with_grass"
}

local spawning = {
    spawn_delay = 60,
    spawn_chance = 20,
    rarity=3,
    near_nodes=moss_sources,
    near_nodes_size=1,
    near_nodes_vertical=1,
    near_nodes_count=3,
    spawn_replace_node=true,
    air_size=1,
    air_count=1,
}

local function register_moss_node(for_node, to_node)
    local biome = {
        spawn_plants={to_node},
        spawn_surfaces ={for_node},
        surface=for_node,
    }
    for k, v in pairs(spawning) do
        biome[k] = v
    end
    biome_lib.register_active_spawner(biome)
    biome_lib.register_on_generate(biome, to_node)
end

register_moss_node("st_nodes:stone", "st_nodes:mossystone")
register_moss_node("st_nodes:cobble", "st_nodes:mossycobble")
