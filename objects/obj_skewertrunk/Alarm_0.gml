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
    vuelta = 1
    image_speed = 0.5
    audio_stop_sound(snd_skewer1)
    audio_play_sound(snd_skewer1, 0, false)
}
ready = 1


