var dark;
if (obj_levelmanager.editor == 1)
{
    switch global.bg_level
    {
        case "castle":
            dark = 1
            break
        case "ghost":
            dark = 1
            break
        case "underground":
            dark = 1
            break
        default:
            if (global.modo_noche == 1)
            {
                dark = 1
                break
            }
            else
                dark = 0
    }

    switch global.apariencia
    {
        case 0:
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            if (dark == 1)
                image_index = 3
            else
                image_index = 2
            break
        case 2:
            image_index = 4
            break
        case 3:
            image_index = 5
            break
    }

}

