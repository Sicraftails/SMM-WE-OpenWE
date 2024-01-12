if (disabled == 0 && (os_type != os_android) && active != 2)
{
    audio_stop_sound(snd_aceptar)
    audio_play_sound(snd_aceptar, 0, false)
    with (obj_window_select)
    {
        if (active == 1)
            active = 0
    }
    active = 1
    with (obj_persistent)
    {
        global.w_scale = (other.value + 1)
        filter = (other.value + 1)
        event_user(1)
    }
}

