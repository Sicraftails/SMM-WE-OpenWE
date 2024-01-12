switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_torbellino
        break
    case 1:
        sprite_index = spr_SMB3_torbellino
        break
    case 2:
        sprite_index = spr_torbellino
        break
    case 3:
        sprite_index = spr_NSMBU_torbellino
        break
}

if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.1
swimming = 0
bortice = 0
alarm[0] = 5
alarm[10] = 1

