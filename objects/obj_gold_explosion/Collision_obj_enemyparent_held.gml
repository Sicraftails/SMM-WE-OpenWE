if (other.held == 0)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    with (instance_create(other.x, other.y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
}

