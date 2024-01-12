if (other.hardness < 99)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}

