switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB_clawin)
        audio_play_sound(snd_SMB_clawin, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_clawin)
        audio_play_sound(snd_SMB3_clawin, 0, false)
        break
    case 2:
        audio_stop_sound(snd_clawin)
        audio_play_sound(snd_clawin, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_clawin)
        audio_play_sound(snd_NSMBU_clawin, 0, false)
        break
}

