if (other.hardness < 99 && obj_levelmanager.editor == 0 && other.object_index != obj_grinder && other.object_index != obj_thwomp && other.object_index != obj_banzaibill && other.object_index != obj_podoboo && other.object_index != obj_boo && other.object_index != obj_thwomp)
{
    audio_play_sound(snd_kick, 0, false)
    with (instance_create(other.x, other.y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
    event_user(0)
}
else
{
    audio_play_sound(snd_kick, 0, false)
    event_user(0)
}

