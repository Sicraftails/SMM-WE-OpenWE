if (hardness < 99)
{
    if (other.held == 1)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        event_user(0)
        with (instance_create((x - 8), y, obj_score))
            event_user(4)
        with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
            sprite_index = spr_spinthump
        with (other.id)
            event_user(0)
    }
    else if (held == 0 && other.held == 0 && hspeed != 0)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create((x - 8), y, obj_score))
            event_user(4)
        with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
            sprite_index = spr_spinthump
        with (other.id)
            event_user(0)
    }
}

