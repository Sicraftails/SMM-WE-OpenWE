if (y >= (camera_get_view_y(view_get_camera(0)) + 115) && vspeed >= 0)
{
    gravity = 0
    vspeed = 0
    y = (camera_get_view_y(view_get_camera(0)) + 115)
    image_index = 0
    if (ready == 0)
    {
        ready = 1
        alarm[0] = 100
        alarm[1] = 25
    }
}
else
    gravity = 0.3
    
if (vspeed >= 0)
{
    if (y >= (camera_get_view_y(view_get_camera(0))) + posyy)
    {
        gravity = 0
        vspeed = 0
        y = ((camera_get_view_y(view_get_camera(0))) + posyy)
        if (global.apariencia < 3)
            sprite_index = s_idle
        if (ready == 0)
        {
            ready = 1
            alarm[0] = 100
            alarm[1] = 25
        }
    }
    else
        sprite_index = s_down
}
else
    gravity = 0.3


