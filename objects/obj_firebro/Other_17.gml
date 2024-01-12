if (global.apariencia == 3)
{
    if (sprite_index == spr_NSMBU_firebro_throw)
    {
        if (image_index >= 17 && image_index < 17.5)
            alarm[3] = 1
    }
    else if (sprite_index == spr_NSMBU_firebro_jump)
    {
        if (image_index >= 7 && image_index < 7.5)
            alarm[1] = 1
        else if (image_index >= 17 && vspeed != 0 && image_speed != 0)
        {
            image_speed = 0
            image_index = 17
        }
        else if (vspeed == 0 && image_index > 7.5)
        {
            if (image_index <= 17)
            {
                image_index = 18
                image_speed = 0.5
            }
        }
    }
}


