if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && (global.bg_level == "forest" || global.bg_level == "beach")))
{
    image_angle -= (6 * sign(hspeed))
    if (vspeed > 1)
    {
        vspeed = 1
        gravity = 0
    }
}
else
{
    image_angle -= (15 * sign(hspeed))
    if (vspeed > 4)
    {
        vspeed = 4
        gravity = 0
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    instance_create(x, (obj_lava_water.y - 24), obj_splash_lava)
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    instance_create(x, (obj_lava_water.y - 24), obj_splash_posion)
    instance_destroy()
}
if (x < (camera_get_view_x(view_get_camera(0)) - 32) || x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 32) || y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) + 32))
    instance_destroy()

