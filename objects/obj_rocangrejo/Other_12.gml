switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_rocangrejo_idle
        break
    case 1:
        sprite_index = spr_SMB3_rocangrejo_idle
        break
    case 2:
        sprite_index = spr_rocangrejo_idle
        break
    case 3:
        sprite_index = spr_NSMBU_rocangrejo_idle
        break
}

image_index = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
hspeed = 0
jumping = 0

