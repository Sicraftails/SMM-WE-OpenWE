if (cont_sounds == 1)
{
    if (stop == 0)
        audio_stop_sound(sonido)
    audio_play_sound(sonido, 0, false)
}
else
{
    var ramdom_sound = choose(sonido, sonido2, sonido3, sonido4)
    audio_stop_sound(ramdom_sound)
    audio_play_sound(ramdom_sound, 0, false)
}
