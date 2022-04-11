local stone_color = "#928E86"
local moss_color = "#486B46"

local small_box = {
    type = "fixed",
    fixed = {-0.4, -0.5, -0.4, 0.4, -0.4, 0.4}
}

local function register_small_mesh_node(name, desc, mesh, tiles)
    minetest.register_node("st_nodes:" .. name, {
        description = desc,
        drawtype = "mesh",
        mesh = mesh,
        tiles = tiles,
        floodable = true,
        walkable = false,
        buildable_to = true,
        paramtype = "light",
        groups = {
            dig_immediate = 3,
            attached_node=1
        },
        sunlight_propagates = true,
        selection_box = small_box,
        collision_box = small_box,
    })
end

local pebble_texture = "(st_nodes_stone.png^[multiply:" .. stone_color .. ")"

register_small_mesh_node("pebbles_1", "Pebbles", "1_pebbles.obj", {pebble_texture})
register_small_mesh_node("pebbles_2", "Pebbles", "2_pebbles.obj", {pebble_texture})
register_small_mesh_node("pebbles_3", "Pebbles", "3_pebbles.obj", {pebble_texture})
register_small_mesh_node("pebbles_4", "Pebbles", "4_pebbles.obj", {pebble_texture})

local mossy_pebble_texture = pebble_texture
    .. "^("
        .. "(st_nodes_grass.png" .. "^[multiply:".. moss_color .. ")"   -- Moss texutre
        .. "^[mask:st_nodes_moss_mask.png"                        -- Moss mask
    .. ")"

register_small_mesh_node("mossypebbles_1", "Mossy pebbles", "1_pebbles.obj", {mossy_pebble_texture})
register_small_mesh_node("mossypebbles_2", "Mossy pebbles", "2_pebbles.obj", {mossy_pebble_texture})
register_small_mesh_node("mossypebbles_3", "Mossy pebbles", "3_pebbles.obj", {mossy_pebble_texture})
register_small_mesh_node("mossypebbles_4", "Mossy pebbles", "4_pebbles.obj", {mossy_pebble_texture})
