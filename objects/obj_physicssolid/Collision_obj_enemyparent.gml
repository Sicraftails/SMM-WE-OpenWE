if (other.hardness < 99 && other.hardness != 6 && other.visible == true && other.object_index != obj_grinder && other.object_index != obj_banzaibill && other.object_index != obj_podoboo && other.object_index != obj_angrysun && other.object_index != obj_cheepcheep && other.object_index != obj_thwomp && other.object_index != obj_boo && other.object_index != obj_cannonball && other.object_index != obj_cannonball_red)
{
    if ((bbox_bottom - vspeed) < (other.bbox_top + 2) && vspeed > 0 && vspeed != 0)
        other.y += vspeed
    if ((bbox_bottom - vspeed) < (other.bbox_top + 1) && vspeed > 0 && (collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_solidtop, 0, 0) || collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_physicssolid, 0, 0)))
    {
        if (other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
        {
            with (other.id)
            {
                instance_create(x, y, obj_explosion)
                instance_destroy()
            }
        }
        else
        {
            audio_stop_sound(scr_snd_kick())
            audio_play_sound(scr_snd_kick(), 0, false)
            with (other.id)
                event_user(0)
        }
    }
}
