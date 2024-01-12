if (global.timer > 0 && global.timer < 101)
{
    audio_stop_sound(scr_snd_hurryup())
    audio_play_sound(scr_snd_hurryup(), 1, false)
}

