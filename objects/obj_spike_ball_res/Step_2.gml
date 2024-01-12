if (obj_levelmanager.editor == 1)
{
    if (global.bg_level == "snow")
    {
        sprite_index = spr_snow_ball_res
        image_index = global.apariencia
    }
    else
    {
        if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_spike_ball_night_res
        else
            sprite_index = spr_spike_ball_res
        image_index = global.apariencia
    }
}


