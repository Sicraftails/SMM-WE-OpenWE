/// @description Hurt Mario
//If Mario is not invincible
if (invincible == 0)
{
    if (global.yoshi > 0)
    {
        if (global.yoshi == 1)
        {
            event_user(6)
            if instance_exists(obj_yoshi_red)
                var yoshi = obj_yoshi_red
            else if instance_exists(obj_yoshi_blue)
                yoshi = obj_yoshi_blue
            else if instance_exists(obj_yoshi2)
                yoshi = obj_yoshi2
            if instance_exists(yoshi)
            {
                if (yoshi == obj_yoshi_red)
                    var yoshis = obj_yoshi_runaway_red
                else if (yoshi == obj_yoshi_blue)
                    yoshis = obj_yoshi_runaway_blue
                else if (yoshi == obj_yoshi2)
                    yoshis = obj_yoshi_runaway
                var yoshi_r = instance_create(yoshi.x, yoshi.y, yoshis)
                if (yoshi.mouthholder != noone)
                {
                    yoshi_r.mouthholder = yoshi.mouthholder
                    yoshi_r.mouthsprite = yoshi.mouthsprite
                }
                with (yoshi)
                    instance_destroy()
                vspeed = -3.5
                hspeed = 0
            }
        }
        else if (global.yoshi == 2)
        {
            event_user(6)
            with (obj_kuriboshoe)
                event_user(5)
        }
        global.yoshi = 0
        holding = 0
        visible = true
        fly_cap = 0
        canfly = 0
        scr_lose_condition()
    }
    else if (modo_vuelo == 0 && (!instance_exists(obj_deadmario)) && (!instance_exists(obj_mario_transform2)))
    {
        if (helmet == 0)
        {
            switch global.powerup
            {
                case 0:
                    visible = false
                    instance_create(x, y, obj_deadmario)
                    instance_destroy()
                    break
                case 1:
                    audio_play_sound(scr_snd_powerdown(), 0, false)
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        c_powerup = 1
                        small = 2
                        powerdown = 1
                    }
                    break
                case -85:
                    audio_play_sound(snd_SMB_link_powerdown, 0, false)
                    global.powerup = 0
                    obj_levelmanager.mchange = 3
                    global.ef_repeat = 1
                    holding = 0
                    down_atack = 0
                    down_cont = 0
                    arrow = 0
                    arrow_ready = 0
                    dash_atack = 0
                    dash_cont = 0
                    event_user(6)
                    imdead = instance_create(x, (y + 3), obj_enemy_dead)
                    imdead.girar = 1
                    imdead.sprite_index = spr_link_deads
                    imdead.hspeed = (-((1 * direct)))
                    scr_lose_condition()
                    break
				case -80:
                    audio_play_sound(snd_SMB_link_powerdown, 0, false)
                    global.powerup = 0
                    obj_levelmanager.mchange = 3
                    global.ef_repeat = 1
                    holding = 0
					event_user(6)
                    break
                case 3:
                    audio_play_sound(scr_snd_powerdown(), 0, false)
                    global.powerup = 1
                    if instance_exists(obj_cap_mario)
                    {
                        with (obj_cap_mario)
                        {
                            cap_invisible = 1
                            visible = false
                        }
                    }
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        cap = 2
                        powerdown = 1
                    }
                    break
                case -39:
                    audio_play_sound(scr_snd_powerdown(), 0, false)
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        c_powerup = 1
                        sprite_powerup = spr_SMB3_mushroom
                        powerdown = 1
                    }
                    break
                default:
                    if (global.powerup == -50)
                    {
                        obj_levelmanager.mchange = 3
                        global.ef_repeat = 1
                    }
					else if (global.powerup == -80)
                    {
                        obj_levelmanager.mchange = 3
                        global.ef_repeat = 1
                    }
                    audio_play_sound(scr_snd_powerdown(), 0, false)
                    with (instance_create(0, 0, obj_mario_transform2))
                    {
                        c_powerup = 1
                        switch global.apariencia
                        {
                            case 0:
                                sprite_powerup = spr_SMB_mushroom
                                break
                            case 1:
                                sprite_powerup = spr_SMB3_mushroom
                                break
                            case 2:
                                sprite_powerup = spr_mushroom
                                break
                            case 3:
                                sprite_powerup = spr_NSMBU_mushroom
                                break
                        }

                        powerdown = 1
                    }
            }

            scr_lose_condition()
            fly_cap = 0
            canfly = 0
        }
        else
        {
            event_user(6)
            helmet = 0
            if instance_exists(obj_brickhelmet)
            {
                with (obj_brickhelmet)
                    event_user(5)
            }
            else
            {
                with (obj_helmet)
                    event_user(5)
            }
            scr_lose_condition()
        }
    }
    else
    {
        event_user(6)
        audio_play_sound(snd_mariocap_out, 0, false)
        modo_vuelo = 0
        stompstyle = 1
        fly_cap = 0
        canfly = 0
    }
}