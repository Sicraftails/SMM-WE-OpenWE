if (global.apariencia == 3)
    audio_play_sound(snd_letsgo, 0, false)
else
{
    switch global.jugador
    {
        case 0:
            audio_play_sound(snd_letsgo, 0, false)
            break
        case 1:
            audio_play_sound(snd_letsgo_luigi, 0, false)
            break
        case 2:
            audio_play_sound(snd_letsgo_toad, 0, false)
            break
        case 3:
            audio_play_sound(snd_letsgo_toadette, 0, false)
            break
    }

}
ready = 2


