switch global.apariencia
{
    case 0:
        s_doorlock_anim = spr_SMB_doorlock_anim
        s_doorlock_unlock = spr_SMB_doorlock_unlock
        s_doorlock_unlock_close = spr_SMB_doorlock_unlock_close
        break
    case 1:
        s_doorlock_anim = spr_SMB3_doorlock_anim
        s_doorlock_unlock = spr_SMB3_doorlock_unlock
        s_doorlock_unlock_close = spr_SMB3_doorlock_unlock_close
        break
    case 2:
        s_doorlock_anim = spr_doorlock_anim
        s_doorlock_unlock = spr_doorlock_unlock
        s_doorlock_unlock_close = spr_doorlock_unlock_close
        break
    case 3:
        s_doorlock_anim = spr_NSMBU_doorlock_anim
        s_doorlock_unlock = spr_NSMBU_doorlock_unlock
        s_doorlock_unlock_close = spr_NSMBU_doorlock_unlock_close
        break
}

image_speed = 0
image_index = 0
returndoor = 0
rotacion = 0
rot = 0
up = 0
rot_angle = 0
lock = 1
get = 0
back = -4

