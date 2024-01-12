if instance_exists(obj_invincibility)
    exit
if (stomp != -1 || other.invincible == -1)
{
    if (other.bbox_bottom < ((bbox_top - vspeed) + 5))
    {
        if (stomp != 3 && stomp != 5 && (other.stompstyle == 1 || global.yoshi > 0))
        {
            if (global.apariencia < 2)
                audio_play_sound(snd_step_enemy, 0, false)
            else
            {
                audio_play_sound(snd_stomp, 0, false)
                audio_play_sound(snd_tread_boss, 0, false)
            }
            with (other.id)
                event_user(1)
            if (hitpoints != 1)
            {
                with (instance_create(other.x, (other.bbox_bottom - 8), obj_smoke))
                {
                    if (global.apariencia == 3)
                        sprite_index = spr_NSMBU_effect_stomp
                    else
                        sprite_index = spr_spinthump
                    depth = -3
                }
            }
            event_user(1)
        }
        else if (stomp == 0 || stomp == 4 || stomp == 5)
        {
            if (global.apariencia < 2)
                audio_play_sound(snd_step_enemy, 0, false)
            else
            {
                audio_play_sound(snd_stomp, 0, false)
                audio_play_sound(snd_tread_boss, 0, false)
            }
            if (vspeed < 0)
            {
                y = yprevious
                if (other.vspeed > 0)
                    other.y = other.yprevious
            }
            with (other.id)
                event_user(1)
            if (hitpoints != 1)
            {
                with (instance_create(other.x, (other.bbox_bottom - 8), obj_smoke))
                {
                    if (global.apariencia == 3)
                        sprite_index = spr_NSMBU_effect_stomp
                    else
                        sprite_index = spr_spinthump
                    depth = -3
                }
            }
            event_user(1)
        }
    }
    else
    {
        with (other.id)
            event_user(0)
    }
}

