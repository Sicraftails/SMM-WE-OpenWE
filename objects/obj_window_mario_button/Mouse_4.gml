if (disabled == 0)
{
    if (s_contorno == 0)
    {
        audio_play_sound(scr_snd_powerup(), 0, false)
        if (powerup == -21)
            global.star_flash = 1
        else
        {
            with (obj_mario_editor)
                type_powerup = other.type_powerup
        }
    }
    else if (powerup == -21)
    {
        audio_play_sound(scr_snd_powerdown(), 0, false)
        global.star_flash = 0
    }
    else
    {
        audio_play_sound(scr_snd_powerdown(), 0, false)
        with (obj_mario_editor)
            type_powerup = 0
    }
    with (obj_ventana)
        can_anim2 = 1
}
else
{
    audio_stop_sound(snd_wrong)
    audio_play_sound(snd_wrong, 0, false)
}

