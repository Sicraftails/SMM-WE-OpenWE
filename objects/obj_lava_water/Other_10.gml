switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "forest":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB_lava_purple
                else
                    sprite_index = spr_SMB_water
                break
            case "castle":
                sprite_index = spr_SMB_lava
                break
            case "beach":
                sprite_index = spr_SMB_water_b
                break
            case "mountain":
                sprite_index = spr_SMB_lava
				break

        }

        break
    case 1:
        switch global.bg_level
        {
            case "forest":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_lava_purple
                else
                    sprite_index = spr_SMB3_water
                break
            case "castle":
                sprite_index = spr_SMB3_lava
                break
            case "beach":
                sprite_index = spr_SMB3_water_b
                break
            case "mountain":
                sprite_index = spr_SMB3_lava
                break
        }

        break
    case 2:
        switch global.bg_level
        {
            case "forest":
                if (global.modo_noche == 1)
                    sprite_index = spr_lava_purple
                else
                    sprite_index = spr_water
                break
            case "castle":
                sprite_index = spr_lava
                break
            case "beach":
                sprite_index = spr_water_b
                break
            case "mountain":
				sprite_index = spr_lava
                break
        }

        break
    case 3:
        switch global.bg_level
        {
            case "forest":
                if (global.modo_noche == 1)
                    sprite_index = spr_NSMBU_pocion
                else
                    sprite_index = spr_NSMBU_water
                break
            case "castle":
                sprite_index = spr_NSMBU_lava
                break
            case "beach":
                sprite_index = spr_NSMBU_water
                break
            case "mountain":
                sprite_index = spr_NSMBU_lava
                break
        }

        break
    case 4:
        switch global.bg_level
        {
            case "forest":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB2_lava_purple
                else
                    sprite_index = spr_SMB2_water
                break
            case "castle":
                sprite_index = spr_SMB2_lava
                break
            case "beach":
                sprite_index = spr_SMB_water
                break
            case "mountain":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB_lava
                break
        }

        break
}


