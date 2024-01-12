switch global.apariencia
{
    case 2:
        audio_stop_sound(snd_coin10)
        audio_play_sound(snd_coin10, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_coin10)
        audio_play_sound(snd_NSMBU_coin10, 0, false)
        break
    default:
        audio_stop_sound(snd_SMB3_coin10)
        audio_play_sound(snd_SMB3_coin10, 0, false)
}

