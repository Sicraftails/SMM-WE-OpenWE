switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_boo_stretch_d
        break
    case 1:
        sprite_index = spr_SMB3_boo_stretch_d
        break
    case 2:
        sprite_index = spr_boo_stretch_d
        break
    case 3:
        sprite_index = spr_NSMBU_boo_stretch_hide
        break
}

image_index = 0
if (global.apariencia == 3)
    image_index = 0.3
else
    image_speed = 0.15
hspeed = 0
stretch = 1
stomp = -1

