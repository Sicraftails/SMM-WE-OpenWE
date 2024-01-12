if (kickme == 1 && inmune == 0 && (!instance_exists(obj_invincibility)) && other.groundpount == 0)
{
    if (held == 0)
    {
        if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0 && global.yoshi == 0 && other.state == 2 && other.holding == 0 && ((!keyboard_check(global.lanzar_agarrar)) || global.apariencia == 0))
            event_user(1)
        else if (scr_canhold() && (!inwall))
        {
            other.holding = 2
            if (global.apariencia == 2 && other.isduck == 1)
                isduckhold = 1
            if (global.apariencia == 3)
            {
                audio_play_sound(choose(snd_NSMBU_hold1, snd_NSMBU_hold2), 0, false)
                with (other)
                {
                    triple_jump = 0
                    triple_count = 0
                }
            }
            held = 1
            depth = -7
            gravity = 0
            speed = 0
        }
        else if (inmune == 0)
        {
            if (other.stompstyle == 1 || (global.yoshi == 1 && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0))
            {
                if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0)
                {
                    with (obj_mario)
                        event_user(1)
                    event_user(0)
                }
            }
            else if (global.yoshi == 2 && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0)
            {
                with (other)
                    event_user(1)
                if (global.apariencia < 2)
                {
                    if instance_exists(obj_kuribo_drybones)
                        audio_play_sound(snd_SMB3_kick, 0, false)
                    else
                        audio_play_sound(snd_step_enemy, 0, false)
                }
                else
                    audio_play_sound(snd_kick, 0, false)
                instance_create(other.x, (other.y + 22), obj_spinthump)
                event_user(0)
            }
            else if (vspeed >= 0 || (vspeed >= 0 && global.yoshi > 0))
            {
                audio_play_sound(scr_snd_kick(), 0, false)
                if (!instance_exists(obj_smoke))
                {
                    with (instance_create(x, y, obj_smoke))
                        sprite_index = spr_spinthump
                }
                with (obj_mario)
                {
                    if (holding == 0 && global.apariencia != 0 && global.apariencia != 3)
                        event_user(7)
                }
                alarm[5] = -1
                with (instance_create(x, y, obj_shell_drybones_held))
                {
                    sprite_index = other.sprite_index
                    if instance_exists(obj_mario)
                    {
                        if ((!instance_exists(obj_mario)) || obj_mario.x < (x + 8))
                        {
                            if (obj_mario.hspeed == 0)
                            {
                                hspeed = 2
                                spd = 2.5
                            }
                            else
                            {
                                hspeed = (2 + (obj_mario.hspeed / 2))
                                spd = (2.2 + abs((obj_mario.hspeed / 2)))
                            }
                            prevhspeed = hspeed
                            if (spd > 3.2)
                                spd = 3.2
                        }
                        else
                        {
                            if (obj_mario.hspeed == 0)
                            {
                                hspeed = -2
                                spd = -2.5
                            }
                            else
                            {
                                hspeed = (-((2 + abs((obj_mario.hspeed / 2)))))
                                spd = (-((2.2 + abs((obj_mario.hspeed / 2)))))
                            }
                            prevhspeed = hspeed
                            if (spd < -3.2)
                                spd = -3.2
                        }
                        vspeed = other.vspeed
                    }
                    inmune = 1
                    alarm[2] = 12
                }
                instance_destroy()
            }
        }
    }
}
