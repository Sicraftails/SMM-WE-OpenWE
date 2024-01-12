if (other.bbox_bottom < ((bbox_top - vvelocidad) + 5) && other.vspeed >= 0)
{
    with (other.id)
    {
        if (hardness < 2)
        {
            audio_play_sound(snd_tread_boss, 0, false)
            with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
                sprite_index = spr_spinthump
            firehitpoints--
            if (firehitpoints == 0)
            {
                hitpoints = 1
                event_user(1)
            }
            else
            {
                hardness = 99
                inv = 4
            }
            with (other.id)
                event_user(0)
        }
    }
}

