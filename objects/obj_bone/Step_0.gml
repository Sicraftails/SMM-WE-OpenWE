if (x < (camera_get_view_x(view_get_camera(0)) - 128) || (x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 128) && y < (camera_get_view_y(view_get_camera(0)) - 128)) || y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) + 128))
    instance_destroy()
if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
if instance_exists(obj_deadmario)
    speed = 0
if (!instance_exists(obj_deadmario))
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
        image_angle -= (4 * sign(hspeed))
    else
        image_angle -= (8 * sign(hspeed))
}

