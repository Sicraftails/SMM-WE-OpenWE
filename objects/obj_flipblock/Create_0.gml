switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_qblock
        image_speed = 0
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
            case "mountain":
            if (global.modo_noche == 1)
                    image_index = 0
                else
                    image_index = 0
                break
            case "ghost":
                image_index = 1
                break
            case "underground":
                image_index = 1
                break
            default:
                image_index = 0
        }

        break
    case 1:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB3_qblock_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_qblock_night
                break
            case "underground":
                sprite_index = spr_SMB3_qblock_night
                break
            case "mountain":
            if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_qblock_dark
                else
                    sprite_index = spr_SMB3_qblock
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_qblock_night
                    break
                }
                else
                    sprite_index = spr_SMB3_qblock
        }

        image_speed = 0.15
        break
    case 2:
        image_speed = 0
        sprite_index = spr_flipblock
        break
    case 3:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_NSMBU_block_dark
                break
            case "ghost":
                sprite_index = spr_NSMBU_block_night
                break
            case "underground":
                sprite_index = spr_NSMBU_block_night
                break
            case "mountain":
            if (global.modo_noche == 1)
                    sprite_index = spr_NSMBU_block_dark
                else
                    sprite_index = spr_NSMBU_block
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_NSMBU_block_night
                    break
                }
                else
                    sprite_index = spr_NSMBU_block
        }

        image_speed = 0.2
        break
}
ready = 0
downwards = 0
flips = 0
convertirse = 1
wings = 0
wings_anim = 0
s_scalex = 1
s_scaley = 1
expand = 0
expand2= 0
expand3 = 0
if (global.apariencia == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.apariencia == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4
event_user(10)

