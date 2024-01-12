if (mouse_check_button(mb_left) && obj_levelmanager.editor == 1)
{
    if (sprite_index == spr_button_time_up)
    {
        if (obj_levelmanager.leveltime < 500)
        {
            obj_levelmanager.leveltime += 10
            if (!audio_is_playing(snd_timeup))
                audio_play_sound(snd_timeup, 0, false)
        }
    }
    else if (sprite_index == spr_button_time_down)
    {
        if (obj_levelmanager.leveltime > 10)
        {
            obj_levelmanager.leveltime -= 10
            if (!audio_is_playing(snd_timedown))
                audio_play_sound(snd_timedown, 0, false)
        }
    }
    if (cont > 60)
    {
        alarm[0] = 1
        cont_more = 0
    }
    else
    {
        alarm[0] = 6
        cont_more = 1
    }
}
else
{
    alarm[0] = -1
    al = 0
    cont = 0
}

