local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

local human_model = "st_human.b3d"
local human_texture = "st_human.png"

st_anim_objects.register_model(human_model, {
    mesh = human_model,
    animation_speed = 12,
    textures = {human_texture},
    animations = {
        stand = {x=0, y=12},
        run = {x=13, y=25},
        dig = {x=26, y=38}
    },
    visual_size = {x = 1, y = 1, z = 1},
    eye_height = 1.7,
    collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.75, 0.3}
})

local function set_model(player_name, model_name)
    local player = minetest.get_player_by_name(player_name)
    st_anim_objects.set_model(player, model_name)

    -- TODO: make something more smart with animations
    player:set_local_animation(
        st_anim_objects.get_animation_data(model_name, "stand"),
        st_anim_objects.get_animation_data(model_name, "run"),
        st_anim_objects.get_animation_data(model_name, "dig"),
        st_anim_objects.get_animation_data(model_name, "run"),
        12
    )
end


minetest.register_on_joinplayer(function(player)
    set_model(player:get_player_name(), human_model)
end)