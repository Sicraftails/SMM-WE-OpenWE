if (x > (camera_get_view_x(view_get_camera(0)) - 32) && x < ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 32))
{
    if instance_exists(obj_lava_water)
    {
        if (obj_lava_water.y > (ystart + 16))
        {
            visible = true
            vspeed = -4
            alarm[2] = 10
        }
        else
            alarm[1] = 10
    }
    else
    {
        visible = true
        vspeed = -4
        alarm[2] = 10
    }
}
else
    alarm[1] = 10
