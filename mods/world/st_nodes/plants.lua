local modname = minetest.get_current_modname()

local small_box = {
    type = "fixed",
    fixed = {-0.4, -0.5, -0.4, 0.4, -0.4, 0.4}
}

local function register_grass_node(name, desc, tiles)
    minetest.register_node(
        modname .. ":" .. name,
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
            drop={}
        }
    )
end

register_grass_node("grass", "Grass", {"st_nodes_grass_1.png"})
register_grass_node("grass_1", "Grass", {"st_nodes_grass_2.png"})
register_grass_node("grass_2", "Grass", {"st_nodes_grass_3.png"})