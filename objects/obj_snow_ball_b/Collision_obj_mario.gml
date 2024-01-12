if (kickme == 1)
{
    if (held == 0)
    {
        if (inmune == 0)
        {
            if ((other.stompstyle == 1 && other.bbox_bottom < ((bbox_top - vspeed) + 5)) || (global.yoshi == 2 && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0))
            {
                if (global.apariencia < 2)
                {
                    if instance_exists(obj_kuribo_drybones)
                        audio_play_sound(snd_SMB3_kick, 0, false)
                    else
                        audio_play_sound(snd_step_enemy, 0, false)
                }
                else
                    audio_play_sound(snd_kick, 0, false)
                with (other.id)
                    event_user(1)
                instance_create(other.x, (other.y + 22), obj_spinthump)
                event_user(0)
            }
            else if (vspeed >= 0 || (vspeed >= 0 && global.yoshi > 0))
            {
                audio_stop_sound(scr_snd_kick())
                audio_play_sound(scr_snd_kick(), 0, false)
                with (instance_create(x, y, obj_smoke))
                    sprite_index = spr_spinthump
                with (obj_mario)
                {
                    if (holding == 0 && global.apariencia != 0 && global.apariencia != 3)
                        event_user(7)
                }
                with (instance_create(x, y, obj_snow_ball_held))
                {
                    alarm[0] = 5
                    fisica = 1
                    vspeed = -0.5
                    posy = 0
                    sprite_index = other.sprite_index
                    imagen = other.sprite_index
                    mask_index = other.sprite_index
                    if instance_exists(obj_mario)
                    {
                        if ((global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship"))
                        {
                            if ((!instance_exists(obj_mario)) || obj_mario.x < x)
                                hspeed = 2.5
                            else
                                hspeed = -2.5
                        }
                        else if ((!instance_exists(obj_mario)) || obj_mario.x < x)
                            hspeed = 3.5
                        else
                            hspeed = -3.5
                    }
                    inmune = 1
                    alarm[2] = 12
                }
                instance_destroy()
            }
        }
    }
}


