local small_box = {
    type = "fixed",
    fixed = {-0.4, -0.5, -0.4, 0.4, -0.4, 0.4}
}

minetest.register_node("strtl_decorations:pebbles", {
	description = "Pebbles",
	drawtype = "mesh",
	mesh = "pebbles.obj",
	tiles = {"strtl_nodes_stone.png"},
	floodable = true,
	walkable = false,
	buildable_to = true,
	paramtype = "light",
	groups = {dig_immediate = 3, attached_node=1},
	sunlight_propagates = true,
	selection_box = small_box,
	collision_box = small_box,
})

local function register_small_mesh_node(name, desc, mesh, tiles)
    minetest.register_node("strtl_decorations:" .. name, {
        description = desc,
        drawtype = "mesh",
        mesh = mesh,
        tiles = tiles,
        floodable = true,
        walkable = false,
        buildable_to = true,
        paramtype = "light",
        groups = {dig_immediate = 3, attached_node=1},
        sunlight_propagates = true,
        selection_box = small_box,
        collision_box = small_box,
    })
end

local function register_grass_node(name, desc, tiles)
    
    minetest.register_node(
        "strtl_decorations:" .. name,
        {
            description = desc,
            drawtype = "plantlike",
            tiles = tiles,
            paramtype = "light",
            floodable = true,
            walkable = false,
            buildable_to = true,
            sunlight_propagates = true,
            waving = 2,
            groups = {dig_immediate=3, attached_node=1, grass=1},
            selection_box = small_box,
	        collision_box = small_box,
        }
    )
end

register_small_mesh_node("pebbles", "Pebbles", "pebbles.obj", {"strtl_nodes_stone.png"})
register_small_mesh_node("pebbles_1", "Pebbles", "pebbles_1.obj", {"strtl_nodes_stone.png"})
register_small_mesh_node("pebbles_2", "Pebbles", "pebbles_2.obj", {"strtl_nodes_stone.png"})
register_small_mesh_node("mossypebbles", "Mossy pebbles", "pebbles.obj", {"strtl_nodes_mossystone.png"})
register_small_mesh_node("mossypebbles_1", "Mossy pebbles", "pebbles_1.obj", {"strtl_nodes_mossystone.png"})
register_small_mesh_node("mossypebbles_2", "Mossy pebbles", "pebbles_2.obj", {"strtl_nodes_mossystone.png"})

register_grass_node("grass", "Grass", {"strtl_decorations_grass_1.png"})
register_grass_node("grass_1", "Grass", {"strtl_decorations_grass_2.png"})
register_grass_node("grass_2", "Grass", {"strtl_decorations_grass_3.png"})