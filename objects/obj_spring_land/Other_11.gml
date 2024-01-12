image_speed = 0.5
if (!outside_view())
{
    audio_stop_sound(scr_snd_spring())
    audio_play_sound(scr_snd_spring(), 0, false)
}

