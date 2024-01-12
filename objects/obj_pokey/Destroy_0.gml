if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 0 && image_index == 0)
{
    if (global.bg_level == "snow")
    {
        with (instance_create((x - 8), (y - 8), obj_snow_ball))
            vspeed = -2
    }
    if instance_exists(mebelow)
    {
        with (mebelow)
            event_user(7)
    }
}

