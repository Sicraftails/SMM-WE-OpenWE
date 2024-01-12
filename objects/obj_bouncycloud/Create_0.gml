switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "snow":
                sprite = spr_SMB_bouncycloud_snow
                break
            case "underwater":
                sprite = spr_SMB_bouncycloud_water
                break
            case "castle":
                sprite = spr_SMB_bouncycloud_dark
                break
            case "underground":
                sprite = spr_SMB_bouncycloud_night
                break
            case "ghost":
                sprite = spr_SMB_bouncycloud_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite = spr_SMB_bouncycloud_night
                    break
                }
                else
                    sprite = spr_SMB_bouncycloud
        }

        sound = snd_SMB3_spring
        break
    case 1:
        switch global.bg_level
        {
            case "snow":
                sprite = spr_SMB3_bouncycloud_snow
                break
            case "underwater":
                sprite = spr_SMB3_bouncycloud_water
                break
            case "castle":
                sprite = spr_SMB3_bouncycloud_dark
                break
            case "underground":
                sprite = spr_SMB3_bouncycloud_night
                break
            case "ghost":
                sprite = spr_SMB3_bouncycloud_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite = spr_SMB3_bouncycloud_night
                    break
                }
                else
                    sprite = spr_SMB3_bouncycloud
        }

        sound = snd_SMB3_spring
        break
    case 2:
        if (global.bg_level == "underwater")
            sprite = spr_bouncycloud_water
        else
            sprite = spr_bouncycloud
        sound = snd_spring
        break
    case 3:
        sprite = spr_NSMBU_bouncycloud_idle
        sound = snd_NSMBU_bouncycloud
        break
}

image_speed = 0
image_index = 0
ready = 0
index = 0
scale = 1

