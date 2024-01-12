if (can_dead == 1)
{
    if (other.hardness < 99 && other.object_index != obj_grinder && other.object_index != obj_podoboo && other.object_index != obj_boo && other.object_index != obj_banzaibill && other.object_index != obj_bulletbill)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (other.id)
            event_user(0)
    }
}
