local stone_color = "#928E86"
local moss_color = "#486B46"

minetest.register_node("st_nodes:cobble", {
	description = "Cobble",
	tiles = {"st_nodes_cobble.png^[multiply:" .. stone_color},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("st_nodes:mossycobble", {
	description = "Mossy cobble",
	tiles = {"(st_nodes_cobble.png^[multiply:".. stone_color ..")"   -- Cobble texture
			.. "^("
				.. "(st_nodes_grass.png" .. "^[multiply:" .. moss_color   -- Moss texutre
				.. "^[mask:st_nodes_moss_mask.png)"                        -- Moss mask
			.. ")"},
	groups = {dig_immediate=2, cracky=3},
})

minetest.register_node("st_nodes:stone", {
	description = "Stone",
	tiles = {"st_nodes_stone.png^[multiply:" .. stone_color},
	groups = {dig_immediate=2, cracky=3},
	drop = "st_nodes:cobble"
})

-- (st_nodes_stone.png^[multiply:#928E86)^((st_nodes_grass.png^[multiply:#486B46)^[mask:st_nodes_moss_mask.png)
minetest.register_node("st_nodes:mossystone", {
	description = "Mossy cobble",
	tiles = {"(st_nodes_stone.png^[multiply:".. stone_color ..")"   -- Stone texture
		    .. "^("
				.. "(st_nodes_grass.png" .. "^[multiply:".. moss_color .. ")"   -- Moss texutre
				.. "^[mask:st_nodes_moss_mask.png"                        -- Moss mask
			.. ")"},
	groups = {dig_immediate=2, cracky=3},
	drop = "st_nodes:mossycobble"
})