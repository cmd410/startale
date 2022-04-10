local small_box = {
    type = "fixed",
    fixed = {-0.4, -0.5, -0.4, 0.4, -0.4, 0.4}
}

local function register_small_mesh_node(name, desc, mesh, tiles)
    minetest.register_node("st_decorations:" .. name, {
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

register_small_mesh_node("pebbles", "Pebbles", "pebbles.obj", {"st_nodes_stone.png"})
register_small_mesh_node("pebbles_1", "Pebbles", "pebbles_1.obj", {"st_nodes_stone.png"})
register_small_mesh_node("pebbles_2", "Pebbles", "pebbles_2.obj", {"st_nodes_stone.png"})
register_small_mesh_node("mossypebbles", "Mossy pebbles", "pebbles.obj", {"st_nodes_mossystone.png"})
register_small_mesh_node("mossypebbles_1", "Mossy pebbles", "pebbles_1.obj", {"st_nodes_mossystone.png"})
register_small_mesh_node("mossypebbles_2", "Mossy pebbles", "pebbles_2.obj", {"st_nodes_mossystone.png"})
