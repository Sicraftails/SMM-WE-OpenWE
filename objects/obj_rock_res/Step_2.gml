switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_block_rock
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 5
                else
                    image_index = 4
                break
            case "underwater":
                image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "mountain":
                image_index = 0
                break
            case "airship":
                image_index = 2
                break
            case "underground":
                image_index = 1
                break
            case "ghost":
                image_index = 1
                break
            default:
                image_index = 0
        }

        break
    case 1:
        sprite_index = spr_SMB3_block_rock
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 4
                else
                    image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "underground":
                image_index = 1
                break
            case "mountain":
            if (global.modo_noche == 1)
                image_index = 2
            else
                image_index = 0
                break
            case "ghost":
                image_index = 1
                break
            default:
                image_index = 0
        }

        break
    case 2:
        if (global.bg_level == "ghost" || global.bg_level == "airship")
            sprite_index = spr_madera
        else
            sprite_index = spr_block_rock
        break
    case 3:
        sprite_index = spr_NSMBU_block_rock
        switch global.bg_level
        {
            case "ghost":
                image_index = 5
                break
            case "airship":
                if (global.modo_noche == 0)
                    image_index = 0
                else
                    image_index = 4
                break
            case "sky":
                if (global.modo_noche == 0)
                    image_index = 0
                else
                    image_index = 4
                break
            case "mountain":
            if (global.modo_noche == 1)
                image_index = 2
            else
                image_index = 0
                break
            case "underwater":
                image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "underground":
                image_index = 1
                break
            default:
                image_index = 0
        }

        break
}


