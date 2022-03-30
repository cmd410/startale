minetest.register_node("strtl_nodes:cobble", {
	description = "Cobble",
	tiles = {"strtl_nodes_cobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("strtl_nodes:mossycobble", {
	description = "Mossy cobble",
	tiles = {"strtl_nodes_mossycobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("strtl_nodes:stone", {
	description = "Stone",
	tiles = {"strtl_nodes_stone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "strtl_nodes:cobble"
})

minetest.register_node("strtl_nodes:mossystone", {
	description = "Mossy cobble",
	tiles = {"strtl_nodes_mossystone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "strtl_nodes:mossycobble"
})