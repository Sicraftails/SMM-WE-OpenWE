if (enemy_dead == 1)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}

