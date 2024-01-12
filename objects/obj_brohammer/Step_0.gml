if (!instance_exists(obj_deadmario))
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    {
        if (global.apariencia == 0)
            image_angle -= (8 * sign(hspeed))
        else
            image_angle -= (6 * sign(hspeed))
        gravity = 0.05
    }
    else
    {
        if (global.apariencia == 0)
            image_angle -= (25 * sign(hspeed))
        else
            image_angle -= (15 * sign(hspeed))
        gravity = 0.125
    }
}
if (modo_lava == 1)
{
    gravity = 0.05
    if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 4)
    vspeed = 4
if (x < (camera_get_view_x(view_get_camera(0)) - 32) || x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 32) || y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) + 32))
    instance_destroy()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1 && modo_lava == 0)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}

