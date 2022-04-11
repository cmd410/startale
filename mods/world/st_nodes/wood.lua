--TODO: move this function elsewhere for universal use
function rotate_axis(itemstack, placer, pointed_thing)
	minetest.rotate_and_place(itemstack, placer, pointed_thing,
		minetest.is_creative_enabled(placer:get_player_name()))
	return itemstack
end

minetest.register_node("st_nodes:oak_log", {
	description = "Oak log",
	tiles = {
        "st_nodes_log_tops.png^[multiply:#AA8068",
        "st_nodes_log_tops.png^[multiply:#AA8068",
        "st_nodes_bark.png^[multiply:#AA8068"
    },
	groups = {dig_immediate=2},
    paramtype2 = "facedir",
	on_place = rotate_axis,
})