if (press == 1)
{
    audio_stop_sound(snd_panel_close)
    audio_play_sound(snd_panel_close, 0, false)
    if instance_exists(obj_time)
    {
        with (obj_time)
            event_user(0)
    }
    else if instance_exists(obj_autoavance)
    {
        with (obj_autoavance)
            event_user(0)
    }
    else if instance_exists(obj_condiciones)
    {
        global.condiciones = 1
        with (obj_condiciones)
            event_user(0)
    }
}


