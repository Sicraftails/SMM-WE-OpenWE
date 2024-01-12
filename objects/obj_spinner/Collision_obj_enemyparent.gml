if (other.hardness < 99 && other.vspeed >= 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    if (other.object_index == obj_koopa || other.object_index == obj_koopa_red || other.object_index == obj_buzzybeetle || other.object_index == obj_snow_ball_held || other.object_index == obj_shell_held)
    {
        with (other.id)
        {
            with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
                sprite_index = spr_spinthump
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), y, obj_score))
                event_user(0)
            event_user(5)
        }
    }
    else if (other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
    {
        with (instance_create((other.x - 8), other.y, obj_bobomb_hold))
        {
            if (layer_background_get_sprite(scr_bg_underwater()))
                vspeed = -0.5
            else
                vspeed = -1
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            {
                hspeed = 1.2
                direct = 1
            }
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            {
                hspeed = -1.2
                direct = -1
            }
            else
            {
                hspeed = 1.2
                direct = 1
            }
        }
        with (other.id)
            instance_destroy()
    }
    else
    {
        with (other.id)
        {
            with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
                sprite_index = spr_spinthump
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), y, obj_score))
                event_user(0)
            event_user(0)
        }
    }
}

