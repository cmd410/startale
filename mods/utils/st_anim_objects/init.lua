st_anim_objects = {
    models = {}
}

--[[
Anim object defenition:

{
    mesh = "mesh.b3d",
    textures = {"texture.png", ...},
    visual_size = {x=10, y=10, z=10}
    frame_speed = 12, -- animation playback speed
    animations = {
        animation_name = {
            frame_range = {x=1, y=12},  -- x - start frame, y - end frame
            frame_speed = 12,  -- Optional speed override
            frame_blend = 0.0,
            frame_loop = true
        }
    }
}
]]--


-- Register animated object defention under given name
function st_anim_objects.register_model(name, def)
    st_anim_objects.models[name] = def
end

-- Get model props for ObjectRef:set_properties function
function st_anim_objects.get_model_props(name)
    local model = st_anim_objects.models[name]
    if model == nil then
        return nil
    end
    return {
        visual = "mesh",
        mesh = model.mesh,
        visual_size = model.visual_size or {x=1, y=1, z=1},
        textures = model.textures,
        is_visible = true,
        shaded = true,
        eye_height = model.eye_height or 1.7,
        collisionbox = model.collisionbox or {-0.3, 0.0, -0.3, 0.3, 1.75, 0.3}
    }
end

-- Get animation data for given anim object name
function st_anim_objects.get_animations(name)
    return (st_anim_objects.models[name] or {}).animations
end

-- Get animation data for given model and anim name
function st_anim_objects.get_animation_data(obj_name, anim_name)
    return (st_anim_objects.get_animations(obj_name) or {})[anim_name]
end


-- Set visual model for given ObjRef
function st_anim_objects.set_model(Obj, model_name)
    Obj:set_properties(st_anim_objects.get_model_props(model_name))
end
