if (obj_levelmanager.editor == 1)
{
    if (global.bg_level == "beach" && global.apariencia == 3)
    {
        if (global.modo_noche == 1)
            sprite_index = spr_NSMBU_decoracion_beach_night
        else
            sprite_index = spr_NSMBU_decoracion_beach
        image_index = 3
    }
	else if (global.bg_level == "mountain" && global.apariencia == 3 && global.modo_noche == 0)
    {
        sprite_index = spr_NSMBU_decoracion_mountain_4
        image_index = 0
    }
    else if (global.bg_level == "mountain" && global.apariencia == 3 && global.modo_noche == 1)
    {
        sprite_index = spr_NSMBU_decoracion_4_night
        image_index = 12
    }
	else if (global.bg_level == "mountain" && global.apariencia == 1 && global.modo_noche == 0)
    {
        sprite_index = spr_SMB3_decoracion_mountain_4
        image_index = 0
    }
	else if (global.bg_level == "mountain" && global.apariencia == 1 && global.modo_noche == 1)
    {
        sprite_index = spr_SMB3_decoracion_volcano_4
        image_index = 0
    }
    else
    {
        switch global.apariencia
        {
            case 0:
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB_decoracion_4_night
                else
                    sprite_index = spr_SMB_decoracion_4
                break
            case 1:
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_decoracion_4_night
                else
                    sprite_index = spr_SMB3_decoracion_4
                break
            case 2:
                if (global.modo_noche == 1)
                    sprite_index = spr_decoracion_4_night
                else
                    sprite_index = spr_decoracion_4
                break
            case 3:
                if (global.modo_noche == 1)
                    sprite_index = spr_NSMBU_decoracion_4_night
                else
                    sprite_index = spr_NSMBU_decoracion_4
                break
        }

        switch global.bg_level
        {
            case "ground":
                image_index = 0
                break
            case "underground":
                image_index = 1
                break
            case "underwater":
                image_index = 2
                break
            case "desert":
                image_index = 3
                break
            case "snow":
                image_index = 4
                break
            case "sky":
                image_index = 5
                break
            case "forest":
                image_index = 6
                break
            case "ghost":
                image_index = 7
                break
            case "airship":
                image_index = 8
                break
            case "castle":
                image_index = 9
                break
            case "fall":
                image_index = 10
                break
            case "beach":
                image_index = 11
                break
            case "mountain":
                image_index = 12
                break
        }

    }
}

