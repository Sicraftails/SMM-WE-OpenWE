if (other.hardness < 99 && other.stomp != 1)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
    {
        with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
        {
            sprite_index = spr_NSMBU_spinthump
            depth = -9
        }
        event_user(0)
    }
}

