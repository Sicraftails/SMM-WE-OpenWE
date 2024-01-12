if (global.apariencia == 2 && inup == 0)
{
    if (instance_exists(obj_mario) && gravity == 0)
    {
        vspeed = (-(2.5 - (0.5 * swimming)))
        sprite_index = spr_jumppiranha
        image_speed = 0.15
    }
    else
    {
        alarm[0] = 1
        exit
    }
}

