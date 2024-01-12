if (global.apariencia == 3)
    exit
if (!instance_exists(obj_deadmario))
{
    if (gravity > 0)
    {
        if (trow == 1)
        {
            sprite_index = s_hammerbro_throw
            image_speed = 0
            image_index = (trow - 1)
        }
        else if (trow == 0 && global.apariencia == 2)
        {
            sprite_index = s_hammerbro_jump
            image_speed = 0
        }
        else
        {
            sprite_index = s_hammerbro
            image_speed = 0.125
        }
    }
    else
    {
        image_speed = 0.125
        if (trow == 0)
            sprite_index = s_hammerbro
        else if trow
        {
            sprite_index = s_hammerbro_throw
            image_index = (trow - 1)
        }
    }
}


