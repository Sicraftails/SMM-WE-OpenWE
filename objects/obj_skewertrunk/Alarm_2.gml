switch direct_t
{
    case 1:
        vspeed = -1
        break
    case 2:
        hspeed = -1
        break
    case 3:
        vspeed = 1
        break
    case 4:
        hspeed = 1
        break
}

if (global.apariencia == 3)
{
    audio_stop_sound(snd_skewer2)
    audio_stop_sound(snd_skewer4)
    audio_play_sound(snd_skewer4, 1, true)
}
ready = 5


