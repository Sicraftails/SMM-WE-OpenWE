if (global.powerup == 0)
    mask_index = spr_smallmask
else if (global.powerup == -77)
    mask_index = spr_megamask
else if (global.powerup == -85)
    mask_index = spr_smallmask
else
    mask_index = spr_bigmask
if (vspeed != 0)
{
    if (swimming == 1 && swim == 1)
    {
        sprite_index = scr_marioswimhold()
        image_speed = 0.15
    }
    else
    {
        sprite_index = scr_mariojump()
        image_speed = 0
        if (vspeed < 0)
            image_index = 0
        else
            image_index = 1
    }
}
else if (hspeed == 0)
{
    sprite_index = scr_marioidle()
    image_speed = 0
}
else
{
    sprite_index = scr_mariowalk()
    image_speed = 0.3
}
if (hspeed > 0)
    direct = 1

