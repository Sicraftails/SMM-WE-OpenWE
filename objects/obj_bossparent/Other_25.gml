switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB3_thwomp_original)
        audio_play_sound(snd_SMB3_thwomp_original, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_thwomp_original)
        audio_play_sound(snd_SMB3_thwomp_original, 0, false)
        break
    case 2:
        audio_stop_sound(snd_tread_boss)
        audio_play_sound(snd_tread_boss, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_bowser_impact)
        audio_play_sound(snd_NSMBU_bowser_impact, 0, false)
        break
}


