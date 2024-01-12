if (other.hardness < 99 && other.visible == true && (bbox_bottom - vspeed) < other.bbox_top)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    audio_stop_sound(scr_snd_kick())
    with (other.id)
        event_user(0)
}

