image_speed = 0.1
switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB_pinchos_ice
                else
                    sprite_index = spr_SMB_pinchos_snow
                break
            case "castle":
                sprite_index = spr_SMB_pinchos_dark
                break
            case "ghost":
                sprite_index = spr_SMB_pinchos_night
                break
            case "underground":
                sprite_index = spr_SMB_pinchos_night
                break
			case "mountain":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB_pinchos_dark
                else
                    sprite_index = spr_SMB_pinchos
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_pinchos_night
                    break
                }
                else
                    sprite_index = spr_SMB_pinchos
        }

        break
    case 1:
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_pinchos_ice
                else
                    sprite_index = spr_SMB3_pinchos
                break
            case "underwater":
                sprite_index = spr_SMB3_pinchos_swin
                break
            case "castle":
                sprite_index = spr_SMB3_pinchos_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_pinchos_night
                break
            case "underground":
                sprite_index = spr_SMB3_pinchos_night
                break
			case "mountain":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_pinchos_dark
                else
                    sprite_index = spr_SMB3_pinchos
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_pinchos_night
                    break
                }
                else
                    sprite_index = spr_SMB3_pinchos
        }

        break
    case 2:
        if (global.bg_level == "underwater")
            sprite_index = spr_pinchos_swin
        break
    case 3:
        switch global.bg_level
        {
            case "ghost":
                sprite_index = spr_NSMBU_pinchos_night
                break
            case "underground":
                sprite_index = spr_NSMBU_pinchos_night
                break
			case "mountain":
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_NSMBU_pinchos
                    break
                }
                else
                    sprite_index = spr_NSMBU_pinchos
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_NSMBU_pinchos_night
                    break
                }
                else
                    sprite_index = spr_NSMBU_pinchos
        }

        break
}

mysolid = obj_lighting
alarm[0] = 15
