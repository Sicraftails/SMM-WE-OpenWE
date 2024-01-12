switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB_coin_10_dark
                break
            case "ghost":
                sprite_index = spr_SMB_coin_10_night
                break
            case "underground":
                sprite_index = spr_SMB_coin_10_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_coin_10_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin_10
        }

        break
    case 1:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB3_coin_10_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_10_night
                break
            case "underground":
                sprite_index = spr_SMB3_coin_10_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_coin_10_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_10
        }

        break
    case 2:
        sprite_index = spr_coin_10
        break
    case 3:
        sprite_index = spr_NSMBU_coin_10
        break
}

active = 0
image_speed = 0.15
