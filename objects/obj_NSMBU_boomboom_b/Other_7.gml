switch sprite_index
{
    case spr_NSMBU_boomboom_standup_b:
        image_speed = 0
        image_index = 5
        alarm[7] = 20
        break
    case spr_NSMBU_boomboom_atack_b:
        alarm[5] = 1
        break
    case spr_NSMBU_boomboom_hurt_b:
        if (increment == 3)
        {
            sprite_index = spr_NSMBU_boomboom_dead_b
            vspeed = (-((4 - (2.5 * swimming))))
            alarm[9] = 10
        }
        break
    case spr_NSMBU_boomboom_out_b:
        sprite_index = spr_NSMBU_boomboom_b
        if ((!instance_exists(obj_mario)) || obj_mario.x < x)
            direct = -1
        else
            direct = 1
        alarm[10] = 20
        break
    case spr_NSMBU_boomboom_in_b:
        sprite_index = spr_NSMBU_boomboom_out_b
        image_speed = 0
        image_index = 0
        break
}

