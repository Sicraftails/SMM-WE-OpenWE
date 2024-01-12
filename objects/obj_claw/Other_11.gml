switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB_clawout)
        audio_play_sound(snd_SMB_clawout, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_clawout)
        audio_play_sound(snd_SMB3_clawout, 0, false)
        break
    case 2:
        audio_stop_sound(snd_clawout)
        audio_play_sound(snd_clawout, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_clawout)
        audio_play_sound(snd_NSMBU_clawout, 0, false)
        break
}



