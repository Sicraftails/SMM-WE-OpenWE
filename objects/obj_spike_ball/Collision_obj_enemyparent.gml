if (enemy_dead == 1 && other.hardness < 99 && other.object_index != obj_grinder && other.object_index != obj_podoboo && other.object_index != obj_podoboo_b && other.object_index != obj_boo && other.object_index != obj_banzaibill && other.object_index != obj_billbanzai_red && other.object_index != obj_bulletbill && other.object_index != obj_bulletbull_red)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
        event_user(0)
}
