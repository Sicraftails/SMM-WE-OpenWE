switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB3_estalactita_break)
        audio_play_sound(snd_SMB3_estalactita_break, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_estalactita_break)
        audio_play_sound(snd_SMB3_estalactita_break, 0, false)
        break
    case 2:
        audio_stop_sound(snd_estalactita_break)
        audio_play_sound(snd_estalactita_break, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_estalactita_break)
        audio_play_sound(snd_NSMBU_estalactita_break, 0, false)
        break
}

