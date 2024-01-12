switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB3_estalactita_fall)
        audio_play_sound(snd_SMB3_estalactita_fall, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_estalactita_fall)
        audio_play_sound(snd_SMB3_estalactita_fall, 0, false)
        break
    case 2:
        audio_stop_sound(snd_estalactita_fall)
        audio_play_sound(snd_estalactita_fall, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_estalactita_fall)
        audio_play_sound(snd_NSMBU_estalactita_fall, 0, false)
        break
}

gravity = 0.15
rot = 0
rotacion = 0

