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

if (door_exit != obj_lighting && instance_exists(door_exit))
{
    door_x = door_exit.x
    door_y = door_exit.y
}

