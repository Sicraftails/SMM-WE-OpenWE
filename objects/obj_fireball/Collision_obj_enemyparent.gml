if (other.object_index != obj_grinder && other.visible == true)
{
    if (other.hardness < 99 && other.hardness != 6 && other.stomp != 5 && other.object_index != obj_buzzybeetle && other.object_index != obj_buzzybeetle_b && other.object_index != obj_bobomb && other.object_index != obj_chain_chomp_free && other.object_index != obj_chain_chomp_free_b && other.object_index != obj_bulletbill && other.object_index != obj_bulletbull_red && other.object_index != obj_cannonball && other.object_index != obj_cannonball_red)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        if (object_index == obj_fire_clown)
        {
            with (instance_create((x + 8), (y - 2), obj_smoke))
                sprite_index = spr_spinthump
            hspeed = prevhspeed
        }
        with (instance_create(other.x, other.y, obj_score))
            event_user(0)
        with (other.id)
            event_user(0)
    }
    if (other.object_index != obj_bobomb || other.object_index == obj_buzzybeetle || other.object_index == obj_buzzybeetle_b || other.object_index == obj_chain_chomp_free || other.object_index == obj_chain_chomp_free_b || other.object_index == obj_bulletbill || other.object_index == obj_bulletbull_red || other.object_index == obj_cannonball || other.object_index == obj_cannonball_red || (other.object_index == obj_cheepcheep && other.modo_lava == 1) || (other.object_index == obj_cheepcheep2 && other.modo_lava == 1))
        event_user(0)
}
