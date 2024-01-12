if (global.apariencia == 3)
{
    audio_stop_sound(snd_skewer2)
    audio_stop_sound(snd_skewer3)
    audio_play_sound(snd_skewer3, 0, false)
}
else
{
    audio_stop_sound(scr_snd_thwomp())
    audio_play_sound(scr_snd_thwomp(), 0, false)
}
init_shake(1)
groundpount_cont = 4


