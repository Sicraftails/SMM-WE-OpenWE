if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_noteblock
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
                case "ghost":
                    image_index = 1
                    break
                case "underground":
                    image_index = 1
                    break
                default:
                    if (global.modo_noche == 1)
                    {
                        image_index = 1
                        break
                    }
                    else
                        image_index = 0
            }

            break
        case 1:
            switch global.bg_level
            {
                case "snow":
                    if (global.modo_noche == 1)
                        sprite_index = spr_SMB3_noteblock_ice
                    else
                        sprite_index = spr_SMB3_noteblock
                    break
                case "castle":
                    sprite_index = spr_SMB3_noteblock_dark
                    break
                case "ghost":
                    sprite_index = spr_SMB3_noteblock_night
                    break
                case "underground":
                    sprite_index = spr_SMB3_noteblock_night
                    break
                default:
                    if (global.modo_noche == 1)
                    {
                        sprite_index = spr_SMB3_noteblock_night
                        break
                    }
                    else
                        sprite_index = spr_SMB3_noteblock
            }

            break
        case 2:
            sprite_index = spr_noteblock
            image_index = 0
            break
        case 3:
            sprite_index = spr_NSMBU_noteblock
            image_index = 0
            break
    }

}

