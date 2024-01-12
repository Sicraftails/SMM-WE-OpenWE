if (other.object_index == obj_bobomb_hold)
{
    audio_play_sound(snd_SMB3_kick, 0, false)
    if ((bbox_left + (other.bbox_right / 2)) < (other.bbox_left + (other.bbox_right / 2)))
    {
        other.hspeed = 1.2
        other.direct = 1
    }
    else if ((bbox_left + (other.bbox_right / 2)) > (other.bbox_left + (other.bbox_right / 2)))
    {
        other.hspeed = -1.2
        other.direct = -1
    }
    else
    {
        hspeed = 1.2
        other.direct = 1
    }
    other.vspeed = -2
    event_user(0)
}
else if (other.hardness < 99)
{
    audio_play_sound(snd_SMB3_kick, 0, false)
    with (instance_create(other.x, other.y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
    event_user(0)
}
else
    event_user(0)

