if (switchon == 1)
{
    switchon = 0
    pswitch_music = 0
    audio_stop_sound(scr_snd_switchsong())
    pwarning = 0
    if (instance_exists(obj_invincibility) && editor == 0)
    {
        if (obj_invincibility.alarm[0] > -1) && !audio_is_playing(snd_n64)
        {
            obj_invincibility.alarm[2] = 2
            audio_play_sound(scr_snd_starman(), 99, true)
            audio_stop_sound(snd_n64)
            audio_stop_sound(scr_music_link())
        }
        else
            alarm[0] = 2
    }
    else
        alarm[0] = 2
}

