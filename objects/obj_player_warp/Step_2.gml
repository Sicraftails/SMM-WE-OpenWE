var sprite;
if (global.apariencia == 3)
{
    if (direction == 90 || direction == 270)
    {
        if (holding == 0)
            sprite_index = scr_NSMBU_ground_idle()
        else
            sprite_index = scr_NSMBU_hold_ground()
        image_speed = 0
        image_index = 6
    }
    else
    {
        if (destruir == 1 && image_index >= 15)
            image_speed = 0
        else
            image_speed = 0.5
        sprite_index = scr_NSMBU_walkpipes()
    }
}
else
{
    if (direction == 90 || direction == 270)
        sprite = scr_marioidle()
    else
        sprite = scr_mariowalk()
    if (holding == 0)
        sprite_index = sprite
    else
        sprite_index = scr_mariohold()
    if (vspeed != 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.15
}

