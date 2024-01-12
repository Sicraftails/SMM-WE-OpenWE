if (downwards == 1)
{
    if (y > (ystart + 20) && vspeed > 0)
    {
        with (instance_create(x, (ystart + 20), obj_score))
        {
            event_user(0)
            visible = false
        }
        if (global.apariencia != 0)
            instance_create(x, (ystart + 20), obj_sparkles_coin)
        instance_destroy()
    }
}
else if (y > (ystart - 20) && vspeed > 0)
{
    with (instance_create(x, (ystart - 20), obj_score))
    {
        event_user(0)
        visible = false
    }
    if (global.apariencia != 0)
        instance_create(x, (ystart - 20), obj_sparkles_coin)
    instance_destroy()
}

