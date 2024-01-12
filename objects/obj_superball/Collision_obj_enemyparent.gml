if (other.object_index != obj_grinder && other.visible == true)
{
    if (other.hardness == 0 && other.object_index != obj_buzzybeetle && other.object_index != obj_bobomb && other.object_index != obj_chain_chomp_free)
    {
        audio_play_sound(snd_SMB3_kick, 0, false)
        with (instance_create(other.x, other.y, obj_score))
            event_user(0)
        with (other.id)
            event_user(0)
    }
    if ((other.hardness < 100 && other.object_index != obj_bobomb) || other.object_index == obj_buzzybeetle || other.object_index == obj_chain_chomp_free)
        event_user(0)
}

