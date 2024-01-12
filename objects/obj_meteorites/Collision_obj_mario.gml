if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && (global.yoshi > 0 || other.stompstyle == 1))
{
    with (other.id)
        event_user(1)
    audio_play_sound(scr_snd_stomp(), 0, false)
    instance_create(other.x, (other.y + 22), obj_spinthump)
}
else if instance_exists(obj_invincibility)
    event_user(0)
else
{
    with (other.id)
        event_user(0)
}

