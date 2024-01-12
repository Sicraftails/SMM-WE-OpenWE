vspeed = 0
y = ystart
if (sprout != -1)
{
    if (progresivo == 1)
    {
        if (global.powerup == 0)
        {
            with (instance_create(x, y, obj_powerupsprout))
            {
                sprite_index = scr_constant_get_sprite(1)
                downwards = other.downwards
                wings = other.wings
                s_sprout = 1
            }
        }
        else
        {
            with (instance_create(x, y, obj_powerupsprout))
            {
                sprite_index = scr_constant_get_sprite(other.sprout)
                downwards = other.downwards
                wings = other.wings
                s_sprout = other.sprout
            }
        }
    }
    else
    {
        with (instance_create(x, y, obj_powerupsprout))
        {
            sprite_index = scr_constant_get_sprite(other.sprout)
            downwards = other.downwards
            wings = other.wings
            s_sprout = other.sprout
        }
    }
}
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_empty_block
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
        sprite_index = spr_SMB3_empty_block
        image_speed = 0
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 3
                else
                    image_index = 0
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
            case "mountain":
            if (global.modo_noche == 1)
                    image_index = 2
                else
                    image_index = 0
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
    case 2:
        sprite_index = spr_qblock_empty
        break
    case 3:
        sprite_index = spr_NSMBU_qblock_empty
        image_speed = 0
        switch global.bg_level
        {
            case "castle":
                image_index = 2
                break
            case "ghost":
                image_index = 1
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
}

