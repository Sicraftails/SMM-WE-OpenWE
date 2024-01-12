if (vspeed == 0)
{
    fade += 0.05
    if (fade > 1)
        instance_destroy()
}
if (y < (camera_get_view_y(view_get_camera(0)) + 32))
    y = (camera_get_view_y(view_get_camera(0)) + 32)

