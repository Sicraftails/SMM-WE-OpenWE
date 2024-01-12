if (other.hardness < 99 && other.visible == true)
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
    if instance_exists(obj_mario)
    {
        if (obj_mario.x < other.x && obj_mario.hspeed > 0)
        {
            with (obj_mario)
            {
                hspeed = -2
                dash_atack = 0
                dash_cont = 0
            }
        }
        else if (obj_mario.x > other.x && obj_mario.hspeed < 0)
        {
            with (obj_mario)
            {
                hspeed = 2
                dash_atack = 0
                dash_cont = 0
            }
        }
    }
}


