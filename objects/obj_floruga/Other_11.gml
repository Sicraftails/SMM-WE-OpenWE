audio_stop_sound(s_jump_floruga)
audio_play_sound(s_jump_floruga, 0, false)
if (state == 0)
{
    with (instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_score))
        event_user(0)
    with (instance_create(x, y, obj_enemy_dead))
    {
        sprite_index = spr_wiggler_flower
        image_index = global.apariencia
        image_speed = 0
        direct = other.direct
    }
    speed = 0
    state = 1
    closeness = 8
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_floruga_angry_head
            break
        case 1:
            sprite_index = spr_SMB3_floruga_angry_head
            break
        case 2:
            sprite_index = spr_floruga_angry_head
            break
        case 3:
            sprite_index = spr_NSMBU_floruga_angry_head
            alarm[2] = 20
            break
    }

    for (i = 1; i < seg; i++)
    {
        if instance_exists(mybody[i])
        {
            switch global.apariencia
            {
                case 0:
                    mybody[i].sprite_index = spr_SMB_floruga_angry_body
                    break
                case 1:
                    mybody[i].sprite_index = spr_SMB3_floruga_angry_body
                    break
                case 2:
                    mybody[i].sprite_index = spr_floruga_angry_body
                    break
                case 3:
                    mybody[i].sprite_index = spr_NSMBU_floruga_angry_body
                    break
            }

        }
    }
    amount_previous = 85
    alarm[1] = 1
    alarm[0] = 60
}
