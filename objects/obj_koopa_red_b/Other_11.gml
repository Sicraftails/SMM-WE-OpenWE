if (wings == 0)
{
    with (obj_mario)
        event_user(1)
    switch global.apariencia
    {
        case 0:
            with (instance_create(x, y, obj_shell))
            {
                sprite_index = spr_SMB_shell_red_b
                key = other.key
                alarm[3] = 540
                alarm[4] = 640
            }
            break
        case 1:
            with (instance_create(x, y, obj_shell))
            {
                sprite_index = spr_SMB3_shell_red_b
                key = other.key
                alarm[3] = 540
                alarm[4] = 640
            }
            break
        case 2:
            with (instance_create(x, y, obj_shell))
                sprite_index = spr_shell_red_b
            with (instance_create(x, y, obj_beachkoopa_red_b))
            {
                sprite_index = spr_beachkoopa_red_b
                if ((obj_mario.bbox_left + (bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
                    hspeed = 3.71
                else if ((obj_mario.bbox_left + (bbox_right / 2)) >= (bbox_left + (bbox_right / 2)))
                    hspeed = -3.71
                else
                    hspeed = (3.71 * obj_mario.direct)
                alarm[11] = 30
                ready = 0
                key = other.key
            }
            break
        case 3:
            with (instance_create(x, y, obj_shell))
            {
                sprite_index = spr_NSMBU_shell_red_b
                direct = other.direct
                key = other.key
                alarm[3] = 540
                alarm[4] = 640
            }
    }

    instance_destroy()
}
else
{
    with (instance_create((x + (9 * direct)), (y + 9), obj_wings_dead_b))
        direct = other.direct
    wings = 0
    if (global.apariencia == 3)
        sprite_index = spr_NSMBU_koopa_red_b
    alarm[10] = 2
}

