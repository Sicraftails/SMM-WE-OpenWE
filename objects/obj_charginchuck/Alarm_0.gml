alarm[0] = 7
if (lookout == 1 && gravity == 0 && global.apariencia > 1)
{
    if (sprite_index == s_charginchuck_walk)
    {
        audio_stop_sound(scr_snd_bump())
        audio_play_sound(scr_snd_bump(), 0, false)
    }
}

