if (cankill == 1)
{
    if ((sprite_index == spr_beachkoopa || sprite_index == spr_beachkoopa_red || sprite_index == spr_beachkoopa_b || sprite_index == spr_beachkoopa_red_b) && other.bbox_bottom >= ((bbox_top - vspeed) + 6))
    {
        audio_play_sound(snd_kick, 0, false)
        event_user(0)
        with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
            sprite_index = spr_spinthump
        with (other.id)
            event_user(7)
    }
    else
        event_inherited()
}

