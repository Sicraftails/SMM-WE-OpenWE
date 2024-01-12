if (obj_mario.stompstyle == 1 && global.apariencia > 1)
{
    with (other.id)
        event_user(1)
    audio_stop_sound(scr_snd_stomp())
    audio_play_sound(scr_snd_stomp(), 0, false)
    instance_create(other.x, (other.y + 22), obj_spinthump)
}
else
{
    with (other.id)
        event_user(0)
}

