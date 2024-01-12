if (global.powerup == 0)
    mask_index = spr_smallmask
else if (global.powerup == -77)
    mask_index = spr_megamask
else if (global.powerup == -85)
    mask_index = spr_smallmask
else
    mask_index = spr_bigmask
if (gravity == 0)
{
    if (hspeed == 0)
    {
        if (pose == 1)
        {
            sprite_index = scr_mariogoal()
            image_speed = 0
            if (helmet == 1)
            {
                with (obj_helmet)
                    instance_destroy()
                image_index = 1
            }
            else if (helmet == 2)
            {
                with (obj_helmet_spiny)
                    instance_destroy()
                image_index = 2
            }
            else
                image_index = 0
        }
    }
    else if (hspeed != 0 || can_walk == 2)
    {
        sprite_index = scr_mariowalk()
        if (hspeed != 0)
            image_speed = abs((hspeed / 10))
        else
            image_speed = 0.15
    }
}
else if (swimming == 1 && swim == 1)
{
    sprite_index = scr_marioswimhold()
    image_speed = 0.15
}
else
{
    if (vspeed > 0)
        sprite_index = scr_mariodrop()
    else
        sprite_index = scr_mariojump()
    image_speed = 0
}

