switch s_sprout
{
    case 1:
        type = 0
        break
    case 2:
        type = 0
        break
    case -50:
        type = 0
        break
    case -78:
        type = 0
        break
    case -46:
        type = 0
        break
    case -43:
        type = 0
        break
    case -30:
        type = 0
        break
    case -29:
        type = 0
        break
    case -38:
        type = 0
        break
    case 3:
        type = 0
        break
    case -39:
        type = 0
        break
    case -74:
        type = 0
        break
    case -18:
        type = 0
        break
    case -80:
        type = 0
        break
    case -77:
        type = 0
        break
    case -21:
        type = 0
        break
    default:
        type = 1
}

if (s_sprout == -50)
    audio_play_sound(snd_SMB_sprout_superflower, 0, false)
else
    audio_play_sound(scr_snd_sprout(), 0, false)
alarm[1] = 1

