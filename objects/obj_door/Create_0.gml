switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_door
        break
    case 1:
        sprite_index = spr_SMB3_door
        break
    case 2:
        sprite_index = spr_door
        break
    case 3:
        sprite_index = spr_NSMBU_door
        break
}

image_speed = 0
posx = (x + 16)
posy = y
doorexit = 0
back = -4
time_blow = 0
get = 0
alarm[2] = 1

