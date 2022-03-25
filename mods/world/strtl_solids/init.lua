minetest.register_node("strtl_solids:cobble", {
	description = "Cobble",
	tiles = {"strtl_solids_cobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("strtl_solids:stone", {
	description = "Stone",
	tiles = {"strtl_solids_stone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "strtl_solids:cobble"
})

minetest.register_node("strtl_solids:sand", {
	description = "Sand",
	tiles = {"strtl_solids_sand.png"},
	groups = {dig_immediate=2},
})

minetest.register_node("strtl_solids:dirt", {
	description = "Dirt",
	tiles = {"strtl_solids_dirt.png"},
	groups = {dig_immediate=2, soil=1},
})

minetest.register_node("strtl_solids:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles ={"strtl_solids_grass.png",
		"strtl_solids_dirt.png",
		{name = "strtl_solids_dirt.png^strtl_solids_grass_slide.png",
		tileable_vertical = false}},
	groups = {dig_immediate=2, soil=1},
	drop = "strtl_solids:dirt"
})
