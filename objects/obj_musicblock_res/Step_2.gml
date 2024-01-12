if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_musicblock
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
            sprite_index = spr_SMB3_musicblock
            image_index = 0
            break
        case 2:
            sprite_index = spr_musicblock
            image_index = 0
            break
        case 3:
            sprite_index = spr_NSMBU_musicblock
            image_index = 0
            break
    }

}

