if (held == 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    event_user(0)
    with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
        sprite_index = spr_spinthump
}
else
    event_user(0)

