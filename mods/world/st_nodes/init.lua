local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. "/stone.lua")
dofile(modpath .. "/liquids.lua")
dofile(modpath .. "/wood.lua")


minetest.register_node("st_nodes:sand", {
	description = "Sand",
	tiles = {"st_nodes_sand.png"},
	groups = {dig_immediate=2, falling_node=1},
})

minetest.register_node("st_nodes:dirt", {
	description = "Dirt",
	tiles = {"st_nodes_dirt.png"},
	groups = {dig_immediate=2, soil=1},
})

minetest.register_node("st_nodes:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles ={"st_nodes_grass.png",
		"st_nodes_dirt.png",
		{name = "st_nodes_dirt.png^st_nodes_grass_slide.png",
		tileable_vertical = false},
	},
	groups = {dig_immediate=2, soil=1},
	drop = "st_nodes:dirt"
})
