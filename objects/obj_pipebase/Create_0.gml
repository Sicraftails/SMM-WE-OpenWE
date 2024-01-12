image_speed = 0
switch global.apariencia
{
    case 0:
        image_index = 0
        break
    case 1:
        switch global.bg_level
        {
            case "underground":
                image_index = 2
                break
            case "ghost":
                image_index = 2
                break
            case "castle":
                image_index = 3
                break
			case "mountain":
                if (global.modo_noche == 1)
                    image_index = 3
                else
                    image_index = 1
                break
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 4
                else
                    image_index = 1
                break
            default:
                if (global.modo_noche == 1)
                {
                    image_index = 2
                    break
                }
                else
                    image_index = 1
        }

        break
    case 2:
        image_index = 5
        break
    case 3:
        image_index = 6
        break
}


