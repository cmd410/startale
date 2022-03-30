local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. "/register_nodes.lua")
dofile(modpath .. "/register_decorations.lua")
