switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_oneway
        break
    case 1:
        sprite_index = spr_SMB3_oneway
        break
    case 2:
        sprite_index = spr_oneway
        break
    case 3:
        sprite_index = spr_NSMBU_oneway
        break
}

if (global.apariencia == 3)
    image_speed = 0.2
else
    image_speed = 0.1
rotacion = 0
rot = 0
up = 0
rot_angle = 0

