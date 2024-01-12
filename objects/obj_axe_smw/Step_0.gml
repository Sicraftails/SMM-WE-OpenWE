if (caer == 1)
{
    if (image_angle >= 90)
    {
        image_angle = 90
        if (global.apariencia == 3)
            audio_play_sound(snd_NSMBU_hacha, 0, false)
        else
            audio_play_sound(scr_snd_thwomp(), 0, false)
        init_shake(1)
        cadena = 1
        alarm[0] = 5
        alarm[2] = 65
        if instance_exists(obj_enemy_dead_castle)
        {
            with (obj_enemy_dead_castle)
            {
                alarm[0] = 65
                alarm[1] = 185
            }
        }
        caer = 2
    }
    else
        image_angle += 5
}

