if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
{
    if (global.apariencia != 0)
        alarm[0] = 1
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        alarm[0] = 1
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "mountain" && global.modo_noche == 1 && modo_lava == 0)
{
    if (global.apariencia != 0)
        alarm[0] = 1
    modo_lava = 1
}
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y + 12) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (vspeed > 0)
{
    if (swimming == 1 || modo_lava == 1)
    {
        gravity = 0.05
        if (vspeed > 0.8)
            vspeed = 0.8
    }
    else
    {
        gravity = 0.1
        if (vspeed > 3.2)
            vspeed = 3.2
    }
    if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 16) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
        y = (obj_lava_water.y + 16)
    if (y > (camera_get_view_y(view_get_camera(0)) + 248) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1 || global.bg_level == "mountain" && global.modo_noche == 1))))
        instance_destroy()
}
if (modo_lava == 1)
    hspeed = 0
else if (hspeed > 1 && hspeed < 2)
    hspeed = 1
else if (hspeed > -2 && hspeed < -1)
    hspeed = -1

