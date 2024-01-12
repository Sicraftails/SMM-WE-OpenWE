if (can_anim == 1)
{
    if (anim < 1)
        anim += 0.08
    else
    {
        event_user(global.apariencia)
        anim = 1
        can_anim = 0
    }
    image_xscale = anim
    image_yscale = anim
}
if (can_anim2 == 1)
{
    if instance_exists(obj_window_mario_button)
    {
        with (obj_window_mario_button)
            instance_destroy()
    }
    if (anim > 0.8)
        anim -= 0.1
    else
        instance_destroy()
    image_xscale = anim
    image_yscale = anim
}

