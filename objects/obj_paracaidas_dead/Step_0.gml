gravity = 0.3
if (vspeed > 4)
    vspeed = 4
if (y > (camera_get_view_y(view_get_camera(0)) + 216))
    instance_destroy()

