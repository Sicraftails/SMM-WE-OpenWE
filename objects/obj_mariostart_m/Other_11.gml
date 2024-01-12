switch global.apariencia
{
    case 0:
        audio_play_sound(snd_SMB_smalljump, 0, false)
        break
    case 1:
        audio_play_sound(snd_SMB3_jump, 0, false)
        break
    case 2:
        audio_play_sound(snd_jump, 0, false)
        break
    case 3:
        audio_play_sound(snd_NSMBU_jump, 0, false)
        break
}



