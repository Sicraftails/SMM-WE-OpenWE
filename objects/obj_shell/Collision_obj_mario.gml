if (kickme == 1 && inmune == 0 && (!instance_exists(obj_invincibility)))
{
    if (held == 0)
    {
        if (scr_canhold() && (!inwall) && sprite_height <= 19)
        {
            other.holding = 2
            if (global.apariencia == 2 && other.isduck == 1)
                isduckhold = 1
            if (global.apariencia == 3)
            {
                audio_play_sound(choose(snd_NSMBU_hold1, snd_NSMBU_hold2), 0, false)
                with (other.id)
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
        else if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed >= 0 && object_index == obj_shell_empty && (!instance_exists(obj_helmet)) && global.apariencia != 3 && other.helmet == 0)
        {
            audio_play_sound(snd_helmet_add, 0, false)
            other.helmet = 1
            instance_create(other.x, (other.y + 15), obj_helmet)
            instance_destroy()
        }
        else if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed >= 0 && object_index == obj_spiny_empty && (!instance_exists(obj_helmet)) && global.apariencia != 3 && other.helmet == 0)
        {
            audio_play_sound(snd_helmet_spiny_add, 0, false)
            obj_mario.helmet = 1
            instance_create(other.x, (other.y + 15), obj_helmet_spiny)
            with (instance_create((obj_mario.x - 4), (obj_mario.y + 14), obj_smoke))
                sprite_index = spr_sparkles_helmet
            instance_destroy()
        }
        else if (inmune == 0)
        {
            if (global.apariencia == 3 && other.bbox_bottom < ((bbox_top - vspeed) + 14) && other.groundpount == 2)
            {
                audio_play_sound(scr_snd_kick(), 0, false)
                instance_create(other.x, (other.y + 22), obj_spinthump)
                if (object_index == obj_bobomb_hold)
                {
                    if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                    {
                        hspeed = 4.2
                        direct = 1
                    }
                    else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                    {
                        hspeed = -4.2
                        direct = -1
                    }
                    else
                    {
                        hspeed = 4.2
                        direct = 1
                    }
                }
                else
                    event_user(0)
            }
            else if ((other.stompstyle == 1 || global.yoshi == 1) && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0)
            {
                if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0)
                {
                    if (object_index == obj_spiny_empty && global.apariencia > 1)
                    {
                        with (other.id)
                            event_user(1)
                        audio_stop_sound(scr_snd_stomp())
                        audio_play_sound(scr_snd_stomp(), 0, false)
                        instance_create(other.x, (other.y + 22), obj_spinthump)
                    }
                    else
                    {
                        with (obj_mario)
                            event_user(1)
                        if (global.apariencia == 3)
                            scr_NSMBU_spinstomp(other, id, 1)
                        instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_spinsmoke)
                        instance_destroy()
                    }
                }
            }
            else if (global.yoshi == 2 && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0)
            {
                if (object_index == obj_spiny_empty)
                {
                    with (other.id)
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
                }
                else
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(snd_step_enemy, 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(0)
                }
            }
            else if (global.powerup == -80 && other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.y < (y - 29) && other.y > (y - 32))
            {
            }
            else if (vspeed >= 0 || (vspeed >= 0 && global.yoshi > 0))
            {
                if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && object_index == obj_spiny_empty && instance_exists(obj_mario))
                {
                    with (obj_mario)
                        event_user(0)
                }
                else
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
                    with (instance_create(x, y, obj_shell_held))
                    {
                        switch other.sprite_index
                        {
                            case spr_shell_inside:
                                sprite_index = spr_shell
                                break
                            case spr_shell_red_inside:
                                sprite_index = spr_shell_red
                                break
                            case spr_shell_inside_b:
                                sprite_index = spr_shell_b
                                break
                            case spr_shell_red_inside_b:
                                sprite_index = spr_shell_red_b
                                break
                            case spr_SMB3_shell_wakeup:
                                sprite_index = spr_SMB3_shell
                                break
                            case spr_SMB3_shell_red_wakeup:
                                sprite_index = spr_SMB3_shell_red
                                break
                            case spr_SMB3_shell_wakeup_b:
                                sprite_index = spr_SMB3_shell_b
                                break
                            case spr_SMB3_shell_red_wakeup_b:
                                sprite_index = spr_SMB3_shell_red_b
                                break
                            case spr_SMB_shell_wakeup:
                                sprite_index = spr_SMB_shell
                                break
                            case spr_SMB_shell_red_wakeup:
                                sprite_index = spr_SMB_shell_red
                                break
                            case spr_SMB_shell_wakeup_b:
                                sprite_index = spr_SMB_shell_b
                                break
                            case spr_SMB_shell_red_wakeup_b:
                                sprite_index = spr_SMB_shell_red_b
                                break
                            default:
                                sprite_index = other.sprite_index
                        }

                        if instance_exists(obj_mario)
                        {
                            koopainside = other.koopainside
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
                        hardness = other.hardness
                        flip = other.flip
                        inmune = 1
                        alarm[2] = 12
                    }
                    instance_destroy()
                }
            }
        }
    }
}
