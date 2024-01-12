
if (!audio_is_playing(scr_snd_kick()))
    audio_play_sound(scr_snd_kick(), 0, false)
if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
{
    hspeed = (other.hspeed - (1 - swimming))
    direct = -1
}
else
{
    hspeed = (other.hspeed + (1 - swimming))
    direct = 1
}
inmune = 1
alarm[3] = 15


