if (can_anim == 1)
{
    if (anim < 1)
        anim += 0.08
    else
    {
        event_user(0)
        anim = 1
        can_anim = 0
    }
    image_xscale = anim
    image_yscale = anim
}
if (can_anim2 == 1)
{
    if instance_exists(obj_button_speed_water)
    {
        with (obj_button_speed_water)
            instance_destroy()
    }
    if (anim > 0.6)
        anim -= 0.15
    else
        instance_destroy()
    image_xscale = anim
    image_yscale = anim
}

