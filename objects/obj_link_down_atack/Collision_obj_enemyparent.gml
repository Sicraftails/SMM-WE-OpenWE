if ((other.hardness < 99 || other.object_index == obj_banzaibill || other.object_index == obj_billbanzai_red) && other.visible == true)
{
    audio_stop_sound(snd_SMB_link_dead_enemigo)
    audio_play_sound(snd_SMB_link_dead_enemigo, 0, false)
    if (other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
    {
        with (instance_create((other.x - 8), other.y, obj_bobomb_hold))
        {
            if (layer_background_get_sprite(scr_bg_underwater()))
                vspeed = -0.5
            else
                vspeed = -1
            if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            {
                hspeed = -1.2
                direct = -1
            }
            else
            {
                hspeed = 1.2
                direct = 1
            }
        }
        with (other.id)
            instance_destroy()
    }
    else
    {
        with (other.id)
        {
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), y, obj_score))
                event_user(0)
            event_user(0)
        }
    }
}
else if (other.object_index == obj_thwomp || other.object_index == obj_grrrol)
{
    audio_stop_sound(snd_SMB_link_dead_enemigo)
    audio_play_sound(snd_SMB_link_dead_enemigo, 0, false)
    with (instance_create(x, (y + 34), obj_smoke))
        sprite_index = spr_boltspark
    with (obj_mario)
    {
        vspeed = (-((4 - (2.5 * isswim))))
        event_user(1)
        down_atack = 0
        down_cont = 0
    }
}


