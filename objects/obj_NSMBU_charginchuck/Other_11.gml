audio_stop_sound(snd_bump)
audio_play_sound(snd_bump, 0, false)
if (wings == 1)
{
    with (instance_create((x + (9 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
    wings = 0
    exit
}
if (sprite_index != spr_NSMBU_charginchuck_damage)
{
    if (hp > 1)
    {
        if (firehp <= 1)
        {
            with (instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_score))
                event_user(4)
            event_user(0)
        }
        else
        {
            sprite_index = s_charginchuck_damage
            image_speed = 0.4
            hp--
            firehp -= 2
            alarm[10] = -1
        }
    }
    else
    {
        with (instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_score))
            event_user(4)
        event_user(0)
    }
}

