if (ready == 1)
{
    gravity = 0.3
    if (vspeed > 6)
        vspeed = 6
    image_angle -= 10
    if ((bbox_top - 16) > room_height)
    {
        with (obj_intro_controller)
            ready = 1
        instance_destroy()
    }
}

