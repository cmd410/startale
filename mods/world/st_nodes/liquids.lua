local WATER_ALPHA = "^[opacity:" .. 200
local WATER_VISC = 1
local LAVA_VISC = 7

local water_color = "#4E588A"


local water_source_tiles = {
	{	name = "st_nodes_water.png^[multiply:".. water_color ..WATER_ALPHA,
		backface_culling = false,
		animation = {
			type = "vertical_frames",
			aspect_w = 32,
			aspect_h = 32,
			length = 4.0
		}
	},
	{	name = "st_nodes_water.png^[multiply:".. water_color..WATER_ALPHA,
		backface_culling = false,
		animation = {
			type = "vertical_frames",
			aspect_w = 32,
			aspect_h = 32,
			length = 4.0
		}
	},
}

minetest.register_node("st_nodes:water_flowing", {
	description = "Flowing Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = water_source_tiles,
	special_tiles = water_source_tiles,
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "st_nodes:water_flowing",
	liquid_alternative_source = "st_nodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("st_nodes:water_source", {
	description = "Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = water_source_tiles,
	special_tiles = water_source_tiles,
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "st_nodes:water_flowing",
	liquid_alternative_source = "st_nodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})


minetest.register_node("st_nodes:river_water_flowing", {
	description = "Flowing Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = water_source_tiles,
	special_tiles = water_source_tiles,
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "st_nodes:water_flowing",
	liquid_alternative_source = "st_nodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 1},
})

minetest.register_node("st_nodes:river_water_source", {
	description = "Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = water_source_tiles,
	special_tiles = water_source_tiles,
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "st_nodes:river_water_flowing",
	liquid_alternative_source = "st_nodes:river_water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 1},
})