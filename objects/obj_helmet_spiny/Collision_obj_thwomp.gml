if (other.bbox_bottom < (bbox_top + 10))
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    with (instance_create(x, y, obj_score))
        event_user(0)
    with (other)
        event_user(0)
}
