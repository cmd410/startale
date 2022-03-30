--TODO: move this function elsewhere for universal use
function rotate_axis(itemstack, placer, pointed_thing)
	minetest.rotate_and_place(itemstack, placer, pointed_thing,
		minetest.is_creative_enabled(placer:get_player_name()))
	return itemstack
end

minetest.register_node("strtl_nodes:oak_log", {
	description = "Oak log",
	tiles = {
        "strtl_nodes_wood_log_tops.png^[multiply:#ffcd9c",
        "strtl_nodes_wood_log_tops.png^[multiply:#ffcd9c",
        "strtl_nodes_rough_wood.png^[multiply:#ffcd9c"
    },
	groups = {dig_immediate=2},
    paramtype2 = "facedir",
	on_place = rotate_axis,
})