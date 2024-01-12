if (obj_mario.stompstyle == 1)
{
    with (obj_mario)
        event_user(1)
    instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_spinsmoke)
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
        key = 0
    }
    instance_destroy()
}

