switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB_coin_50_dark
                break
            case "ghost":
                sprite_index = spr_SMB_coin_50_night
                break
            case "underground":
                sprite_index = spr_SMB_coin_50_night
                break
			case "mountain":
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_coin_50_dark
                    break
                }
                else
                    sprite_index = spr_SMB_coin_50
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_coin_50_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin_50
        }

        break
    case 1:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB3_coin_50_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_50_night
                break
            case "underground":
                sprite_index = spr_SMB3_coin_50_night
                break
			case "mountain":
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_coin_50_dark
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_50
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_coin_50_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_50
        }

        break
    case 2:
        sprite_index = spr_coin_50
        break
    case 3:
        sprite_index = spr_NSMBU_coin_50
        break
}


