switch global.apariencia
{
    case 0:
        audio_play_sound(snd_SMB_switch, 0, false)
        break
    case 1:
        audio_play_sound(snd_SMB3_switch, 0, false)
        break
    case 2:
        audio_play_sound(snd_warning, 0, false)
        break
    case 3:
        audio_play_sound(snd_NSMBU_switch, 0, false)
        break
}

if (enable == 0)
{
    if (global.onoffblock == 0)
    {
        global.onoffblock = 1
        switch global.apariencia
        {
            case 0:
                obj_onoffblock.sprite_index = spr_SMB_onoffblock_off
                break
            case 1:
                obj_onoffblock.sprite_index = spr_SMB3_onoffblock_off
                break
            case 2:
                obj_onoffblock.sprite_index = spr_onoffblock_off
                break
            case 3:
                obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_off
                break
        }

    }
    else
    {
        global.onoffblock = 0
        switch global.apariencia
        {
            case 0:
                obj_onoffblock.sprite_index = spr_SMB_onoffblock_on
                break
            case 1:
                obj_onoffblock.sprite_index = spr_SMB3_onoffblock_on
                break
            case 2:
                obj_onoffblock.sprite_index = spr_onoffblock_on
                break
            case 3:
                obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_on
                break
        }

    }
    with (obj_onoffblock)
    {
        enable = 1
        alarm[4] = 5
    }
}

