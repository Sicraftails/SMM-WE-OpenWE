if (vspeed < 0)
{
    if (global.apariencia == 3)
    {
        if (sprite_index != spr_NSMBU_blooper_up)
        {
            sprite_index = spr_NSMBU_blooper_up
            image_index = 0
        }
        if (image_index >= 11.5)
            image_index = 11
    }
    else
        image_single = 0
}
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_blooper
else
    image_single = 1

