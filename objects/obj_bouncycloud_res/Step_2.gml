if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            switch global.bg_level
            {
                case "snow":
                    image_index = 3
                    break
                case "underwater":
                    image_index = 4
                    break
                case "castle":
                    image_index = 2
                    break
                case "underground":
                    image_index = 1
                    break
                case "ghost":
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
                    image_index = 8
                    break
                case "underwater":
                    image_index = 9
                    break
                case "castle":
                    image_index = 7
                    break
                case "underground":
                    image_index = 6
                    break
                case "ghost":
                    image_index = 6
                    break
                default:
                    if (global.modo_noche == 1)
                    {
                        image_index = 6
                        break
                    }
                    else
                        image_index = 5
            }

            break
        case 2:
            if (global.bg_level == "underwater")
                image_index = 11
            else
                image_index = 10
            break
        case 3:
            image_index = 12
            break
    }

}

