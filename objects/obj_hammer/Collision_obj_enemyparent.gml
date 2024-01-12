if (other.visible == true && other.object_index != obj_grinder && other.object_index != obj_boo && other.hardness != 101)
{
    audio_stop_sound(snd_SMB3_kick)
    audio_play_sound(snd_SMB3_kick, 0, false)
    with (instance_create(other.x, other.y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
    if (other.hardness >= 99)
        event_user(0)
}

