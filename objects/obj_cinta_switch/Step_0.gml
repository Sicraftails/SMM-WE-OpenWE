if (!audio_is_playing(scr_snd_switchsong()))
{
    if (global.onoffblock == 0)
    {
        if (global.apariencia == 0)
        {
            sprite1 = spr_SMB_cinta_on_left
        sprite2 = spr_SMB_cinta_on_middle
        sprite3 = spr_SMB_cinta_on_right
        }
        else if (global.apariencia == 1)
        {
            sprite1 = spr_SMB3_cinta_on_left
            sprite2 = spr_SMB3_cinta_on_middle
            sprite3 = spr_SMB3_cinta_on_right
        }
        else if (global.apariencia == 3)
        {
            sprite1 = spr_NSMBU_cinta_left
            sprite2 = spr_NSMBU_cinta_middle
            sprite3 = spr_NSMBU_cinta_right
        }
        else
        {
            sprite1 = spr_cinta_on_left
            sprite2 = spr_cinta_on_middle
            sprite3 = spr_cinta_on_right
        }
        if (velocidad == 0)
        {
            if (direct_t == 1)
                image_speed = -1
            else
                image_speed = 1
        }
        else if (direct_t == 1)
            image_speed = -2
        else
            image_speed = 2
    }
    else
    {
        if (global.apariencia == 0)
        {
        sprite1 = spr_SMB_cinta_off_left
        sprite2 = spr_SMB_cinta_off_middle
        sprite3 = spr_SMB_cinta_off_right
        }
        else if (global.apariencia == 1)
        {
            sprite1 = spr_SMB3_cinta_off_left
            sprite2 = spr_SMB3_cinta_off_middle
            sprite3 = spr_SMB3_cinta_off_right
        }
        else if (global.apariencia == 3)
        {
            sprite1 = spr_NSMBU_cinta_left
            sprite2 = spr_NSMBU_cinta_middle
            sprite3 = spr_NSMBU_cinta_right
        }
        else
        {
            sprite1 = spr_cinta_off_left
            sprite2 = spr_cinta_off_middle
            sprite3 = spr_cinta_off_right
        }
        if (velocidad == 0)
        {
            if (direct_t == 1)
                image_speed = 1
            else
                image_speed = -1
        }
        else if (direct_t == 1)
            image_speed = 2
        else
            image_speed = -2
    }
}
else
    image_speed = 0

