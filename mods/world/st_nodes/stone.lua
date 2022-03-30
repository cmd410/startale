minetest.register_node("st_nodes:cobble", {
	description = "Cobble",
	tiles = {"st_nodes_cobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("st_nodes:mossycobble", {
	description = "Mossy cobble",
	tiles = {"st_nodes_mossycobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("st_nodes:stone", {
	description = "Stone",
	tiles = {"st_nodes_stone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "st_nodes:cobble"
})

minetest.register_node("st_nodes:mossystone", {
	description = "Mossy cobble",
	tiles = {"st_nodes_mossystone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "st_nodes:mossycobble"
})