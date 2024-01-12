event_inherited()
if ((y + 16) < camera_get_view_y(view_get_camera(0)))
{
    if (last == 1 && visible == true)
        event_user(1)
    else
        instance_destroy()
}

