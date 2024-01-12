if instance_exists(obj_mario)
{
    if (other.bbox_bottom < ((obj_mario.bbox_top - obj_mario.vspeed) + 5) && other.vspeed > 0)
        exit
    if ((other.hardness < 99 || other.object_index == obj_buzzybeetle || other.object_index == obj_buzzybeetle_b) && sprite_index == spr_cap_spinjump && (obj_mario.caped == 1 || obj_mario.stompstyle == 1))
    {
        if (other.object_index != obj_egg)
        {
            audio_stop_sound(snd_kick)
            audio_play_sound(snd_kick, 0, false)
            with (instance_create(other.x, other.y, obj_score))
                event_user(0)
            if (other.object_index == obj_koopa || other.object_index == obj_koopa_b || other.object_index == obj_koopa_red || other.object_index == obj_koopa_red_b || other.object_index == obj_galoomba || other.object_index == obj_buzzybeetle || other.object_index == obj_buzzybeetle_b || other.object_index == obj_snow_ball_held || other.object_index == obj_shell_held)
            {
                with (other.id)
                    event_user(5)
            }
            else
            {
                with (other.id)
                    event_user(0)
            }
        }
    }
}

