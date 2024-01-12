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
    case -85:
        type = 0
        break
    case -46:
        type = 0
        break
	case -44:
		type = 0
		break
    case -43:
        type = 0
        break
    case -29:
        type = 0
        break
    case -38:
        type = 0
        break
    case -18:
        type = 0
        if (global.modo_noche == 1 && global.bg_level == "ground")
            image_index = global.apariencia
        else
            image_index = 1
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
if (sprite_index == spr_SMB_link)
    audio_play_sound(snd_SMB_link_itemappear, 0, false)
else if (sprite_index == spr_SMB_superflower)
    audio_play_sound(snd_SMB_sprout_superflower, 0, false)
else
    audio_play_sound(scr_snd_sprout(), 0, false)
if (type == 0)
{
    visible = true
    if (downwards == 1)
        vspeed = 0.5
    else
        vspeed = -0.5
    alarm[1] = 32
}
else
    alarm[2] = 1

