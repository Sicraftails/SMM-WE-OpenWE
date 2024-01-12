switch global.apariencia
{
    case 0:
        s_door_switch = spr_SMB_door_switch
        s_door_switch_close = spr_SMB_door_switch_close
        s_door_switch_outline = spr_SMB_door_switch_outline
        break
    case 1:
        s_door_switch = spr_SMB3_door_switch
        s_door_switch_close = spr_SMB3_door_switch_close
        s_door_switch_outline = spr_SMB3_door_switch_outline
        break
    case 2:
        s_door_switch = spr_door_switch
        s_door_switch_close = spr_door_switch_close
        s_door_switch_outline = spr_door_switch_outline
        break
    case 3:
        s_door_switch = spr_NSMBU_door_switch
        s_door_switch_close = spr_NSMBU_door_switch_close
        s_door_switch_outline = spr_NSMBU_door_switch_outline
        break
}

image_speed = 0
image_index = 0
posx = (x + 16)
posy = y
doorexit = 0
back = -4
time_blow = 0
get = 0
alarm[2] = 1

