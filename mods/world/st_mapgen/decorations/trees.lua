local treedef = {
    axiom = "TTTTT",
    trunk = "st_nodes:oak_log",
    angle = 35,
    iterations = 1,
    random_level = 0,
    trunk_type = "single",
    thin_branches = true
 }

biome_lib.register_on_generate({
    surface={"st_nodes:dirt_with_grass"},
    plantlife_limit=0.6,
    rarity=15,
    max_count=1,
    max_elevation=31000,
    delete_above=true,
    delete_above_surround=true,
}, treedef)
