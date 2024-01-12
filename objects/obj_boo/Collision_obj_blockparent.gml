if (inup > 0 && other.vspeed < 0 && bbox_bottom < (other.yprevious + 5) && vspeed >= 0)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    event_user(0)
    with (instance_create(x, y, obj_score))
        event_user(0)
}

