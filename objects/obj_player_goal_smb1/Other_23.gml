if (global.powerup == 0)
    mask_index = spr_smallmask
else if (global.powerup == -77)
    mask_index = spr_megamask
else if (global.powerup == -85)
    mask_index = spr_smallmask
else
    mask_index = spr_bigmask
if (ready < 2)
{
    sprite_index = scr_mariogoal()
    if (vspeed > 0)
        image_speed = 0.15
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else if (gravity == 0)
{
    if (hspeed == 0)
    {
        sprite_index = scr_marioidle()
        image_speed = 0
        image_index = 0
    }
    else
    {
        sprite_index = scr_mariowalk()
        image_speed = (0.065 + (abs(hspeed) / 7.5))
    }
}
else if (swimming == 1 && swim == 1)
{
    sprite_index = scr_marioswimhold()
    image_speed = 0.15
}
else
{
    sprite_index = scr_mariojump()
    image_speed = 0
    image_index = 0
}

