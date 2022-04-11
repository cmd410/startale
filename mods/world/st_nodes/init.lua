local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. "/stone.lua")
dofile(modpath .. "/liquids.lua")
dofile(modpath .. "/wood.lua")
dofile(modpath .. "/plants.lua")
dofile(modpath .. "/pebbles.lua")


local grass_color = "#486B46"
local dirt_color = "#CB9A6F"
local sand_color = "#998460"

minetest.register_node("st_nodes:sand", {
	description = "Sand",
	tiles = {"st_nodes_sand.png^[multiply:" .. sand_color},
	groups = {dig_immediate=2, falling_node=1},
})

minetest.register_node("st_nodes:dirt", {
	description = "Dirt",
	tiles = {"st_nodes_dirt.png^[multiply:" .. dirt_color},
	groups = {dig_immediate=2, soil=1},
})

minetest.register_node("st_nodes:leaves", {
	drawtype="allfaces_optional",
	use_texture_alpha="blend",
	description = "Leaves",
	tiles = {"st_nodes_grass.png^[multiply:" .. grass_color .. "^[mask:st_nodes_leaves_mask.png"},
	waving=2,
	groups = {dig_immediate=2},
	paramtype="light"
})

minetest.register_node("st_nodes:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles ={"st_nodes_grass.png^[multiply:" .. grass_color,
		"st_nodes_dirt.png^[multiply:" .. dirt_color,
		{name = "(st_nodes_dirt.png^[multiply:".. dirt_color ..")^((st_nodes_grass.png^[multiply:".. grass_color ..")^[mask:st_nodes_grass_slide_mask.png)",
		tileable_vertical = false},
	},
	groups = {dig_immediate=2, soil=1},
	drop = "st_nodes:dirt"
})
