local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. "/liquids.lua")

minetest.register_node("strtl_nodes:cobble", {
	description = "Cobble",
	tiles = {"strtl_nodes_cobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("strtl_nodes:mossycobble", {
	description = "Cobble",
	tiles = {"strtl_nodes_mossycobble.png"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("strtl_nodes:stone", {
	description = "Stone",
	tiles = {"strtl_nodes_stone.png"},
	groups = {dig_immediate=2, cracky=3},
	drop = "strtl_nodes:cobble"
})

minetest.register_node("strtl_nodes:sand", {
	description = "Sand",
	tiles = {"strtl_nodes_sand.png"},
	groups = {dig_immediate=2, falling_node=1},
})

minetest.register_node("strtl_nodes:dirt", {
	description = "Dirt",
	tiles = {"strtl_nodes_dirt.png"},
	groups = {dig_immediate=2, soil=1},
})

minetest.register_node("strtl_nodes:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles ={"strtl_nodes_grass.png",
		"strtl_nodes_dirt.png",
		{name = "strtl_nodes_dirt.png^strtl_nodes_grass_slide.png",
		tileable_vertical = false}},
	groups = {dig_immediate=2, soil=1},
	drop = "strtl_nodes:dirt"
})
