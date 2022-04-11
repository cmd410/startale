local pebble_nodes = {
    "st_nodes:pebbles_1",
    "st_nodes:pebbles_2",
    "st_nodes:pebbles_3",
    "st_nodes:pebbles_4",
    "st_nodes:mossypebbles_1",
    "st_nodes:mossypebbles_2",
    "st_nodes:mossypebbles_3",
    "st_nodes:mossypebbles_4",
}
local place_on = {
    "st_nodes:dirt_with_grass",
    "st_nodes:stone",
    "st_nodes:cobble",
    "st_nodes:mossystone",
    "st_nodes:mossycobble",
    "st_nodes:sand"
}

for _, peb in pairs(pebble_nodes) do
    minetest.register_decoration(
    {
        deco_type="simple",
        decoration=peb,
        place_on=place_on,
        fill_ratio=0.0005
    }
)
end

