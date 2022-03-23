local WATER_ALPHA = "^[opacity:" .. 180
local WATER_VISC = 0.1
local LAVA_VISC = 7


minetest.register_node("corenodes:stone", {
	description = "Stone",
	tiles = {"stone.png"},
	groups = {dig_immediate=2},
})

minetest.register_node("corenodes:water_flowing", {
	description = "Flowing Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"water.png"},
	special_tiles = {
		{name = "water.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "water.png"..WATER_ALPHA,
			backface_culling = false},
	},
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
	liquid_alternative_flowing = "corenodes:water_flowing",
	liquid_alternative_source = "corenodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("corenodes:water_source", {
	description = "Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = {"water.png"..WATER_ALPHA},
	special_tiles = {
		{name = "water.png"..WATER_ALPHA, backface_culling = false},
		{name = "water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "corenodes:water_flowing",
	liquid_alternative_source = "corenodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})


minetest.register_node("corenodes:river_water_source", {
	description = "River Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = { "water.png"..WATER_ALPHA },
	special_tiles = {
		{name = "water.png"..WATER_ALPHA, backface_culling = false},
		{name = "water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "corenodes:river_water_flowing",
	liquid_alternative_source = "corenodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
})

minetest.register_node("corenodes:river_water_flowing", {
	description = "Flowing River Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"water.png"..WATER_ALPHA},
	special_tiles = {
		{name = "water.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "water.png"..WATER_ALPHA,
			backface_culling = false},
	},
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
	liquid_alternative_flowing = "corenodes:river_water_flowing",
	liquid_alternative_source = "corenodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
})