if (ready == 0)
{
    hspeed = 0
    if (hitpoints == 1)
    {
        for (i = 0; i < 11; i++)
            alarm[i] = -1
        with (instance_create(other.x, (other.bbox_bottom - 8), obj_smoke))
        {
            sprite_index = spr_NSMBU_effect_stomp_boss
            depth = -3
        }
        audio_play_sound(snd_boomboom_dead, 0, false)
        sprite_index = spr_NSMBU_boomboom_hurt
        image_index = 0
        increment = 3
        with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
            event_user(5)
        if (key == 1)
        {
            with (instance_create((x - 8), (y - 8), obj_key_appear))
                vspeed = -4
            key = 0
        }
    }
    else
    {
        sprite_index = spr_NSMBU_boomboom_hurt
        image_index = 0
        if (hitpoints == 3)
        {
            hitpoints = 2
            increment = 1.5
        }
        else
        {
            hitpoints = 1
            increment = 2
        }
        vspeed = -2
        alarm[2] = 60
    }
    ready = 1
    image_speed = 0.5
    alarm[1] = -1
    alarm[9] = -1
    alarm[10] = -1
    alarm[11] = -1
    alarm[3] = -1
    alarm[4] = -1
    stomp = -1
}

