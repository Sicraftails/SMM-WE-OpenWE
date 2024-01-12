if instance_exists(obj_levelmanager)
    pmeter = obj_levelmanager.pmeter
if (airspin > 1 && (!instance_exists(obj_mario_transform2)))
{
    if (airspin >= 11.7)
        airspin = 0
    else
        airspin += 0.9
}
if (isswim == 0 && audio_is_playing(snd_NSMBU_swim2))
    audio_stop_sound(snd_NSMBU_swim2)
if (triple_jump > 0 && state == 2 && jumpnow == 0)
    triple_jump = 0
event_user(9)
if (iamkicking == 1 && stompstyle == 0 && isduck == 0)
{
    sprite_index = scr_NSMBU_kick(isswim)
    if (image_index > (image_number - 1))
    {
        if (state == 2 && isswim == 0)
        {
            sprite_index = scr_NSMBU_jump2()
            image_speed = 0
            image_index = 34
            jump_type = 2
        }
        iamkicking = 0
    }
    else
        image_speed = 0.8
}
else if (isduck == 0)
{
    if (global.powerup == 0)
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask
    if (global.powerup == 2 || global.powerup == -38)
    {
        if (firing > 0)
            firing--
    }
    else
        firing = 0
    if (holding == 0)
    {
        if (state < 2 && isswim == 0 && pmeter > 5 && ((direct == 1 && hspeed < 0 && keyboard_check(global.derecha)) || (direct == -1 && hspeed > 0 && keyboard_check(global.izquierda))))
        {
            sprite_index = scr_NSMBU_skid()
            image_speed = 0
            if (direct == 1)
                image_index = 1
            else
                image_index = 0
            if (skidnow == 0)
            {
                skidnow = 1
                skid_nsmbu = 1
                audio_play_sound(scr_snd_skid(), 1, true)
            }
        }
        else if (skidnow == 1 && state < 2 && direct == 1 && hspeed > 0 && keyboard_check(global.derecha))
        {
            if (sprite_index != scr_NSMBU_skid_right() && (!instance_exists(obj_mario_transform2)))
            {
                image_index = 0
                audio_stop_sound(scr_snd_skid())
            }
            sprite_index = scr_NSMBU_skid_right()
            if (image_index < 6)
                image_speed = 0.6
            else
            {
                sprite_index = scr_NSMBU_runmax()
                image_index = 0
                hspeed = 2.1
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        pmeter = 6
                }
                skidnow = 0
            }
        }
        else if (skidnow == 1 && state < 2 && direct == -1 && hspeed < 0 && keyboard_check(global.izquierda))
        {
            if (sprite_index != scr_NSMBU_skid_left() && (!instance_exists(obj_mario_transform2)))
            {
                image_index = 0
                audio_stop_sound(scr_snd_skid())
            }
            sprite_index = scr_NSMBU_skid_left()
            if (image_index < 6)
                image_speed = 0.6
            else
            {
                sprite_index = scr_NSMBU_runmax()
                image_index = 0
                hspeed = -2.1
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        pmeter = 6
                }
                skidnow = 0
            }
        }
        else if (state == 0)
        {
            if (inclown == 2)
            {
                if (isswim == 1)
                {
                    sprite_index = scr_NSMBU_swim_fall()
                    image_speed = 0.5
                }
                else
                {
					//animacion de claw mario caught
                    sprite_index = scr_NSMBU_jump1()
                    image_speed = 0
                    image_index = 34
                }
            }
            else if (stuntime > 0)
            {
                sprite_index = scr_NSMBU_stun()
                image_speed = 0.4
            }
            else if (groundpount > 1)
            {
                if (groundpount > 6)
                {
                    if keyboard_check(global.abajo)
                    {
                        sprite_index = scr_NSMBU_crouch_idle()
                        image_index = 0
                        groundpount = 0
                        disablecontrols = 0
                    }
                    else
                    {
                        if (sprite_index != scr_NSMBU_standup() && (!instance_exists(obj_mario_transform2)))
                            image_index = 0
                        sprite_index = scr_NSMBU_standup()
                        if (image_index < 14)
                            image_speed = 0.6
                        else
                        {
                            sprite_index = scr_NSMBU_idle(isswim)
                            image_index = 0
                            groundpount = 0
                            disablecontrols = 0
                        }
                    }
                }
                else
                {
                    sprite_index = scr_NSMBU_groundpound_stop()
                    image_speed = 0
                    switch global.powerup
                    {
                        case 0:
                            image_index = 0
                            break
                        case 1:
                            image_index = 1
                            break
                        case 2:
                            image_index = 2
                            break
                        case -30:
                            image_index = 3
                            break
                        case -43:
                            image_index = 4
                            break
                        case -38:
                            image_index = 5
                            break
                    }

                    if (groundpount == 2)
                    {
                        with (instance_create(x, y, obj_smoke))
                        {
                            sprite_index = spr_NSMBU_smoke_groundpound
                            direct = 1
                            image_speed = 0.5
                            depth = -10
                        }
                        with (instance_create(x, y, obj_smoke))
                        {
                            sprite_index = spr_NSMBU_smoke_groundpound
                            direct = -1
                            image_speed = 0.5
                            depth = -10
                        }
                        audio_play_sound(snd_NSMBU_groundpount_stop, 0, false)
                        groundpount = 3
                    }
                    if (!instance_exists(obj_groundpount))
                    {
                        if keyboard_check(global.abajo)
                            groundpount += 0.3
                        else
                            groundpount++
                    }
                }
            }
            else if (firing > 0)
            {
                sprite_index = scr_marioshoot()
                if (firing == 19)
                    image_index = 0
                if (image_index >= 13)
                    firing = 0
                image_speed = 0.7
            }
            else if (isswim == 1)
            {
                if (global.powerup == -38)
                {
                    if (sprite_index == spr_NSMBU_mario_penguin_swim)
                    {
                        if (image_index >= 15.5)
                        {
                            sprite_index = spr_NSMBU_mario_penguin_swim_idle
                            image_index = 0
                        }
                        else
                            image_speed = 0.5
                    }
                    else
                    {
                        sprite_index = spr_NSMBU_mario_penguin_swim_idle
                        if (hspeed == 0)
                            image_speed = 0.5
                        else
                            image_speed = 1
                    }
                }
                else if (new_swim == 1)
                {
                    sprite_index = scr_NSMBU_swim2()
                    image_speed = 1
                }
                else if (sprite_index != scr_NSMBU_idle(isswim) && sprite_index != scr_NSMBU_ground_idle())
                {
                    sprite_index = scr_NSMBU_ground_idle()
                    image_index = 0
                }
                else if (sprite_index == scr_NSMBU_ground_idle())
                {
                    if (image_index >= 10.5)
                    {
                        sprite_index = scr_NSMBU_idle(isswim)
                        image_index = 0
                    }
                    else
                        image_speed = 0.5
                }
                else
                {
                    sprite_index = scr_NSMBU_idle(isswim)
                    image_speed = 0.5
                }
            }
            else
            {
                if (flip > 6)
                {
                    if (flip == 7)
                    {
                        sprite_index = scr_NSMBU_flip_start()
                        if (image_index >= 4.5)
                            flip = 8
                        else
                            image_speed = 0.5
                    }
                    else
                    {
                        sprite_index = scr_NSMBU_flip()
                        image_speed = 0.3
                    }
                }
                else if (sprite_index == scr_NSMBU_ground_idle())
                {
                    if (image_index >= 10.5)
                        sprite_index = scr_NSMBU_idle(isswim)
                    else
                        image_speed = 0.5
                }
                else if (sprite_index == scr_NSMBU_walkhome())
                {
					if global.jugador = 0
						var wkhm = 9
					else
						var wkhm = 6
                    if (image_index >= wkhm)
                        sprite_index = scr_NSMBU_idle(isswim)
                    else
                        image_speed = 1
                }
                else if (sprite_index == scr_NSMBU_idle(isswim))
                {
                    sprite_index = scr_NSMBU_idle(isswim)
                    image_speed = 0.3
                }
                else if (sprite_index == scr_NSMBU_acrouch())
                {
					if global.jugador = 0
						var acrh = 10
					else
						var acrh = 6
                    if (image_index >= acrh)
                    {
                        sprite_index = scr_NSMBU_idle(isswim)
                        crouch_temp = 0
                    }
                    else
                        image_speed = 1
                }
                else if (crouch_temp == 1)
                {
                    sprite_index = scr_NSMBU_acrouch()
                    image_index = 0
                }
                else if (sprite_index == scr_NSMBU_walk(0))
                {
                    sprite_index = scr_NSMBU_walkhome()
                    image_index = 0
                }
                else
                {
                    if (jumpnow_temp == 0)
                        image_index = 5
                    else
                    {
                        audio_play_sound(snd_NSMBU_standup, 0, false)
                        jumpnow_temp = 0
                        image_index = 0
                    }
                    sprite_index = scr_NSMBU_ground_idle()
                }
                if (isswim == 0 && inclown == 0 && global.powerup != -38 && global.jugador == 0 && flip < 7)
                {
                    if (flip < 6)
                        flip += 0.01
                    else
                    {
                        flip = 7
                        image_index = 0
                    }
                }
            }
        }
        else if (state == 1)
        {
            flip = 0
            jumpnow_temp = 0
            crouch_temp = 0
            if (firing > 0)
            {
                sprite_index = scr_marioshoot()
                if (firing == 19)
                    image_index = 0
                if (image_index >= 9)
                    firing = 0
                image_speed = 0.7
            }
            else if (isswim == 1)
            {
                if (global.powerup == -38)
                {
                    if (sprite_index == spr_NSMBU_mario_penguin_swim)
                    {
                        if (image_index >= 15.5)
                        {
                            sprite_index = spr_NSMBU_mario_penguin_swim_idle
                            image_index = 0
                        }
                        else
                            image_speed = 0.5
                    }
                    else
                    {
                        sprite_index = spr_NSMBU_mario_penguin_swim_idle
                        if (hspeed == 0)
                            image_speed = 0.5
                        else
                            image_speed = 1
                    }
                }
                else if (new_swim == 1)
                {
                    sprite_index = scr_NSMBU_swim2()
                    image_speed = 1
                }
                else
                {
                    sprite_index = scr_NSMBU_walk(isswim)
                    image_speed = 0.5
                }
            }
            else if (pmeter < 6)
            {
                if (abs(hspeed) <= (1.4 + abs((1 * instance_number(obj_invincibility)))))
                {
                    if (sprite_index == scr_NSMBU_skid_right() || sprite_index == scr_NSMBU_skid_left())
                    {
                        if (image_index < 6)
                            image_speed = 0.5
                        else
                        {
                            sprite_index = scr_NSMBU_walk(isswim)
                            image_speed = 1
                        }
                    }
                    else
                    {
                        sprite_index = scr_NSMBU_walk(isswim)
                        if (abs(hspeed) == (1.4 + abs((1 * instance_number(obj_invincibility)))))
                            image_speed = (1.5 + (0.5 * snow))
                        else
                            image_speed = (1 + (0.5 * snow))
                    }
                }
                else
                {
                    sprite_index = scr_NSMBU_run()
                    image_speed = (1 + (0.5 * snow))
                }
            }
            else
            {
                if (polvo < 5)
                    polvo++
                else
                {
                    if (hspeed > 0)
                        instance_create((x - 20), (y + 18), obj_smoke_steps)
                    else if (hspeed < 0)
                        instance_create((x + 4), (y + 18), obj_smoke_steps)
                    polvo = 0
                }
                sprite_index = scr_NSMBU_runmax()
                image_speed = (0.8 + (0.2 * snow))
            }
        }
        else if (state == 2)
        {
            flip = 0
            crouch_temp = 0
            if (isswim == 1)
            {
                if (noisy == 0)
                {
                    if (global.powerup == -38)
                    {
                        if (firing > 0)
                        {
                            sprite_index = spr_NSMBU_mario_penguin_swim_shoot
                            if (firing == 19)
                                image_index = 0
                            if (image_index >= 11)
                                firing = 0
                            image_speed = 0.7
                        }
                        else if (sprite_index == spr_NSMBU_mario_penguin_swim)
                        {
                            if (image_index >= 15.5)
                            {
                                sprite_index = spr_NSMBU_mario_penguin_swim_idle
                                image_index = 0
                            }
                            else
                                image_speed = 0.5
                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_penguin_swim_idle
                            if (hspeed == 0)
                                image_speed = 0.5
                            else
                                image_speed = 1
                        }
                    }
                    else if (firing > 0)
                    {
                        sprite_index = scr_marioshoot()
                        if (firing == 19)
                            image_index = 0
                        if (image_index >= 9)
                            firing = 0
                        image_speed = 0.7
                    }
                    else if (new_swim == 1)
                    {
                        sprite_index = scr_NSMBU_swim2()
                        image_speed = 1
                    }
                    else if (sprite_index == scr_NSMBU_swim())
                    {
                        if (image_index > (image_number - 1))
                        {
                            sprite_index = scr_NSMBU_swim_fall()
                            image_index = 0
                        }
                        else
                        {
                            if (image_speed > 0.5)
                                image_speed -= 0.05
                            else
                                image_speed = 0.5
                            if (keyboard_check(global.saltar) && image_index > 7 && image_index < 8)
                            {
                                new_swim = 1
                                audio_play_sound(snd_NSMBU_swim2, 1, true)
                            }
                        }
                    }
                    else
                    {
                        sprite_index = scr_NSMBU_swim_fall()
                        image_speed = 0.5
                    }
                }
            }
            else if (helice_fly > 0 && helice_fly < 5)
            {
                switch helice_fly
                {
                    case 1:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 0
                                    break
                                case 1:
                                    image_index = 1
                                    break
                            }

                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_helice_fly
                            if (global.bg_level == "sky" && global.modo_noche == 1)
                                image_speed = 0.6
                            else
                                image_speed = 0.9
                            if (vspeed > 1 && fly_cap == 0)
                                helice_fly = 2
                        }
                        break
                    case 2:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 2
                                    break
                                case 1:
                                    image_index = 3
                                    break
                            }

                        }
                        else if (sprite_index == spr_NSMBU_mario_helice_drill_spin)
                        {
                            sprite_index = spr_NSMBU_mario_helice_drill_spin_end
                            image_index = 0
                        }
                        else if (sprite_index == spr_NSMBU_mario_helice_drill_spin_end)
                        {
                            if (image_index >= 24)
                            {
                                sprite_index = spr_NSMBU_mario_helice_fall
                                image_index = 0
                            }
                            image_speed = 1
                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_helice_fall
                            image_speed = 0.8
                        }
                        break
                    case 3:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 0
                                    break
                                case 1:
                                    image_index = 1
                                    break
                            }

                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_helice_down_spin
                            if (image_index >= 22.5)
                            {
                                if (helice_fly_temp == 1)
                                {
                                    helice_fly_temp = 0
                                    helice_fly = 2
                                }
                                else
                                    helice_fly_temp++
                            }
                            else if (helice_fly_temp == 0)
                                image_speed = 1.5
                            else
                                image_speed = 1
                        }
                        break
                    case 4:
                        sprite_index = scr_NSMBU_drill_spin()
                        image_speed = 1
                        break
                }

            }
            else if (doublejump != 0 and global.powerup == -43)
            {
                if (doublejump == 1)
                {
                    sprite_index = spr_NSMBU_mario_arcon_doblejump
                    if (image_index >= 39.5)
                    {
                        sprite_index = spr_NSMBU_mario_arcon_fly_d
                        image_index = 0
                        doublejump = 2
                    }
                    else
                        image_speed = 0.5
                }
                else if (airspin == 1)
                {
                    if (sprite_index != scr_NSMBU_airspin1() && (!instance_exists(obj_mario_transform2)))
                        image_index = 0
                    sprite_index = scr_NSMBU_airspin1()
                    if (!instance_exists(obj_mario_transform2))
                        airspin_count += 0.7
                    if (airspin_count < 11.9)
                        image_speed = 0.7
                    else
                    {
                        image_index = 10
                        airspin = 2
                        airspin_count = 0
                    }
                }
                else
                {
                    sprite_index = spr_NSMBU_mario_arcon_fly_d
                    image_speed = 0.5
                }
            }
            else if (walljump == 1 && stompstyle == 0)
            {
                if (global.powerup == -43)
                {
                    image_speed = 0.25
                    if (direct == 1)
                        sprite_index = spr_NSMBU_mario_arcon_wallslide_r
                    else
                        sprite_index = spr_NSMBU_mario_arcon_wallslide_l
                }
                else
                {
                    sprite_index = scr_NSMBU_wall_slide()
                    image_speed = 0
                    if (direct == 1)
                        image_index = 0
                    else
                        image_index = 1
                }
            }
            else if (groundpount != 0)
            {
                if (sprite_index != scr_NSMBU_groundpound_stop)
                {
                    sprite_index = scr_NSMBU_groundpound()
                    if (image_index >= 10.2)
                    {
                        if (time_groundpount > 3)
                        {
                            if (groundpount_cancelled == 1)
                            {
                                sprite_index = scr_NSMBU_groundpound_canceled()
                                image_speed = 0.6
                                image_index = 0
                                groundpount = 0
                                groundpount_cancelled = 0
                                disablecontrols = 0
                            }
                            else
                            {
                                image_speed = 0
                                image_index = 10.2
                                if (groundpount != 2)
                                {
                                    groundpount = 2
                                    if (!instance_exists(obj_groundpount))
                                        instance_create(x, (y + 20), obj_groundpount)
                                    vspeed = 1
                                }
                            }
                            time_groundpount = 0
                        }
                        else
                        {
                            time_groundpount += 1
                            image_speed = 0
                            image_index = 10.2
                        }
                    }
                    else
                        image_speed = 0.8
                }
            }
            else if (triple_jump > 1)
            {
                if (triple_jump == 2)
                {
                    if (sprite_index != scr_NSMBU_triple_jump0() && sprite_index != scr_NSMBU_triple_jump1() && sprite_index != scr_NSMBU_triple_jump3() && sprite_index != scr_NSMBU_airspin1())
                    {
                        var triple_2 = choose(1, 0, 1, 1, 0, 2)
                        triple_number = 33
                        image_index = 0
                        switch triple_2
                        {
                            case 0:
                                sprite_index = scr_NSMBU_triple_jump0()
                                break
                            case 1:
                                sprite_index = scr_NSMBU_triple_jump1()
                                break
                            case 2:
                                sprite_index = scr_NSMBU_triple_jump3()
                                break
                        }

                    }
                }
                else
                {
                    if (sprite_index != scr_NSMBU_triple_jump2() && sprite_index != scr_NSMBU_airspin1() && (!instance_exists(obj_mario_transform2)))
                    {
                        sprite_index = scr_NSMBU_triple_jump2()
                        image_index = 0
                    }
                    triple_number = 35
                }
                if (image_index < triple_number)
                    image_speed = 0.5
                else
                {
                    image_speed = 0
                    image_index = triple_number
                }
                if (airspin == 1)
                {
                    if (image_speed == 0 && image_index == triple_number)
                    {
                        sprite_index = scr_NSMBU_airspin1()
                        image_index = 0
                        image_speed = 0.7
                    }
                    if (!instance_exists(obj_mario_transform2))
                        airspin_count += 0.7
                    if (airspin_count >= 11.9)
                    {
                        if (triple_jump == 2)
                        {
                            if (sprite_index == scr_NSMBU_airspin1())
                            {
                                sprite_index = scr_NSMBU_triple_jump1()
                                image_speed = 0
                                image_index = triple_number
                            }
                        }
                        else if (sprite_index == scr_NSMBU_airspin1())
                        {
                            sprite_index = scr_NSMBU_triple_jump2()
                            image_index = triple_number
                        }
                        airspin = 2
                        airspin_count = 0
                    }
                }
            }
            else if (instance_exists(obj_invincibility) && stompstyle == 0)
            {
                sprite_index = scr_NSMBU_jump_star()
                image_speed = 1
                if (airspin == 1)
                {
                    if (!instance_exists(obj_mario_transform2))
                        airspin_count += 0.7
                    if (airspin_count >= 11.9)
                    {
                        airspin = 2
                        airspin_count = 0
                    }
                }
            }
            else if (airspin == 1)
            {
                if (sprite_index != scr_NSMBU_airspin1() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_airspin1()
                if (!instance_exists(obj_mario_transform2))
                    airspin_count += 0.7
                if (airspin_count < 11.9)
                    image_speed = 0.7
                else
                {
                    if (vspeed < 0)
                        image_index = 17
                    else if (vspeed > 0)
                        image_index = 34
                    sprite_index = scr_NSMBU_jump1()
                    jump_type = 1
                    image_speed = 0
                    airspin = 2
                    airspin_count = 0
                }
            }
            else if (stompstyle == 1)
            {
                if (sprite_index != scr_NSMBU_spinjump() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_spinjump()
                image_speed = 0.8
            }
            else if (firing > 0)
            {
                sprite_index = scr_marioshoot()
                if (firing == 19)
                    image_index = 0
                if (image_index >= 11)
                {
                    firing = 0
                    sprite_index = scr_NSMBU_jump1()
                    image_index = 27
                }
                image_speed = 0.7
            }
            else if (sprite_index == scr_NSMBU_groundpound_canceled())
            {
                if (image_index >= 4.5)
                {
                    sprite_index = scr_NSMBU_jump2()
                    image_speed = 0
                    image_index = 34.5
                    jump_type = 2
                }
                else
                    image_speed = 0.3
            }
			else if (inclown == 1){
				sprite_index = scr_NSMBU_idle(isswim)
				image_speed = 0.3
			}
            else if (inclown == 0 && vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
            {
                if (global.powerup == -43 && keyboard_check(global.saltar) && holding == 0 && stompstyle == 0 && airspin == 0 && walljump == 0 && isduck == 0 && vspeed > 0)
                {
                    switch sprite_index
                    {
                        case spr_NSMBU_mario_arcon_fly_turn:
                            if (direct_turn == 1)
                            {
                                if (image_index <= 1)
                                {
                                    sprite_index = spr_NSMBU_mario_arcon_fly
                                    image_index = 0
                                }
                                else
                                    image_speed = -0.5
                            }
                            else if (image_index >= 15.5)
                            {
                                sprite_index = spr_NSMBU_mario_arcon_fly
                                image_index = 0
                                direct = (-direct)
                            }
                            else
                                image_speed = 0.5
                            break
                        case spr_NSMBU_mario_arcon_fly:
                            image_speed = 0.5
                            break
                        default:
                            if (sprite_index != scr_arcon_fly_start())
                                image_index = 0
                            sprite_index = scr_arcon_fly_start()
                            if (image_index >= 11.5)
                            {
                                sprite_index = scr_arcon_fly()
                                image_index = 0
                                break
                            }
                            else
                                image_speed = 0.5
                    }

                    jumpnow = 0
                }
                else if (sprite_index == spr_NSMBU_mario_arcon_fly || sprite_index == spr_NSMBU_mario_arcon_fly_start)
                {
                    sprite_index = spr_NSMBU_mario_arcon_fly_fall
                    image_index = 0
                }
                else if (sprite_index == spr_NSMBU_mario_arcon_fly_fall)
                {
                    if (image_index >= 17.5)
                    {
                        image_speed = 0
                        image_index = 17.5
                    }
                    else
                        image_speed = 0.5
                }
                else
                {
                    if ((jumpnow == 0 && jumpnow_temp == 0) || skidnow == 1)
                    {
                        image_index = 23
                        jumpnow_temp = 1
                        jump_type = 1
                    }
                    switch jump_type
                    {
                        case 1:
                            sprite_index = scr_NSMBU_jump1()
                            break
                        case 2:
                            sprite_index = scr_NSMBU_jump2()
                            break
                        case 3:
                            sprite_index = scr_NSMBU_jump3()
                            break
                    }

                    if (image_index >= 34.5)
                    {
                        image_speed = 0
                        image_index = 34.5
                    }
                    else
                        image_speed = 0.5
                }
            }
            else
            {
                if (jump_type == 0)
                    jump_type = choose(1, 2, 3)
                switch jump_type
                {
                    case 1:
                        if (sprite_index != scr_NSMBU_jump1() && (!instance_exists(obj_mario_transform2)))
                            image_index = 0
                        sprite_index = scr_NSMBU_jump1()
                        break
                    case 2:
                        if (sprite_index != scr_NSMBU_jump2() && (!instance_exists(obj_mario_transform2)))
                            image_index = 0
                        sprite_index = scr_NSMBU_jump2()
                        break
                    case 3:
                        if (sprite_index != scr_NSMBU_jump3() && (!instance_exists(obj_mario_transform2)))
                            image_index = 0
                        sprite_index = scr_NSMBU_jump3()
                        break
                }

                if (image_index >= 18.5)
                {
                    image_speed = 0
                    image_index = 18.5
                }
                else
                    image_speed = 0.5
            }
        }
    }
    else
    {
        flip = 0
        crouch_temp = 0
        if (state == 0)
        {
            if (isswim == 1)
            {
                if (sprite_index != scr_NSMBU_swim_hold() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_swim_hold()
                image_speed = 0.5
            }
            else if (sprite_index != scr_NSMBU_hold() && sprite_index != scr_NSMBU_hold_ground())
            {
                if (sprite_index != scr_NSMBU_hold_jump() && sprite_index != scr_NSMBU_hold_spinjump())
                    image_index = 7
                else
                {
                    image_index = 0
                    if (gravity == 0)
                    {
                        if (!audio_is_playing(snd_NSMBU_standup))
                            audio_play_sound(snd_NSMBU_standup, 0, false)
                    }
                }
                sprite_index = scr_NSMBU_hold_ground()
            }
            else if (sprite_index == scr_NSMBU_hold_ground())
            {
                if (image_index >= 10.5)
                    sprite_index = scr_NSMBU_hold()
                else
                    image_speed = 0.5
            }
            else
            {
                if (sprite_index != scr_NSMBU_hold())
                {
                    sprite_index = scr_NSMBU_hold()
                    image_index = 0
                }
                image_speed = 0.3
            }
        }
        if (state == 1)
        {
            flip = 0
            jumpnow_temp = 0
            if (isswim == 1)
            {
                if (sprite_index != scr_NSMBU_swim_hold() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_swim_hold()
                image_speed = 0.5
            }
            else
            {
                if (sprite_index != scr_NSMBU_walkhold() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_walkhold()
                if (pmeter < 6)
                {
                    if (global.bg_level == "snow" && global.modo_noche == 1)
                    {
                        if (abs(hspeed) == 1.4)
                            image_speed = 1.5
                        else
                            image_speed = 1.1
                    }
                    else if (abs(hspeed) == 1.4)
                        image_speed = 1
                    else
                        image_speed = 0.6
                }
                else
                    image_speed = 1.5
            }
        }
        if (state == 2)
        {
            if (isswim == 1)
            {
                if (sprite_index != scr_NSMBU_swim_hold() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_swim_hold()
                image_speed = 0.5
            }
            else if (global.powerup == -43 && keyboard_check(global.saltar) && stompstyle == 0 && airspin == 0 && walljump == 0 && isduck == 0 && vspeed > 0)
            {
                if (sprite_index == spr_NSMBU_mario_arcon_flyhold)
                    image_speed = 0.5
                else
                {
                    if (sprite_index != scr_arcon_fly_start())
                        image_index = 0
                    sprite_index = scr_arcon_fly_start()
                    if (image_index >= 11.5)
                    {
                        sprite_index = scr_arcon_fly()
                        image_index = 0
                    }
                    else
                        image_speed = 0.5
                }
                jumpnow = 0
            }
            else if (helice_fly > 0 && helice_fly < 5)
            {
                switch helice_fly
                {
                    case 1:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 0
                                    break
                                case 1:
                                    image_index = 1
                                    break
                            }

                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_helice_hold_fly
                            image_speed = 0.5
                            if (vspeed > 0.5 && fly_cap == 0)
                                helice_fly = 2
                        }
                        break
                    case 2:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 2
                                    break
                                case 1:
                                    image_index = 3
                                    break
                            }

                        }
                        else
                        {
                            if (sprite_index != spr_NSMBU_mario_helice_fall_hold)
                                image_index = 0
                            sprite_index = spr_NSMBU_mario_helice_fall_hold
                            image_speed = 1
                        }
                        break
                    case 3:
                        if instance_exists(obj_mario_transform2)
                        {
                            sprite_index = spr_NSMBU_mario_helice_transform
                            image_speed = 0
                            switch global.powerup
                            {
                                case -30:
                                    image_index = 0
                                    break
                                case 1:
                                    image_index = 1
                                    break
                            }

                        }
                        else
                        {
                            sprite_index = spr_NSMBU_mario_helice_down_spin_hold
                            if (image_index >= 23)
                                helice_fly = 2
                            else
                                image_speed = 1
                        }
                        break
                    case 4:
                        sprite_index = scr_NSMBU_drill_spin()
                        image_speed = 1
                        break
                }

            }
            else if (airspin == 1)
            {
                if (sprite_index != scr_NSMBU_hold_airspin() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_hold_airspin()
                if (!instance_exists(obj_mario_transform2))
                    airspin_count += 0.7
                if (airspin_count < 11.9)
                    image_speed = 0.7
                else
                {
                    jump_type = 3
                    sprite_index = scr_NSMBU_hold_jump()
                    image_speed = 0
                    image_index = 22
                    airspin = 2
                    airspin_count = 0
                }
            }
            else if (stompstyle == 1)
            {
                if (sprite_index != scr_NSMBU_hold_spinjump() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_hold_spinjump()
                image_speed = 0.7
            }
            else
            {
                if (sprite_index != scr_NSMBU_hold_jump() && (!instance_exists(obj_mario_transform2)))
                    image_index = 0
                sprite_index = scr_NSMBU_hold_jump()
                if (image_index < 22)
                    image_speed = 0.6
                else
                {
                    image_speed = 0
                    image_index = 22
                }
            }
        }
    }
    if (state == 3)
    {
        flip = 0
        jumpnow_temp = 0
        crouch_temp = 0
        if (sprite_index == scr_marioclimb())
        {
            if (speed == 0)
            {
                image_speed = 0
                image_index = 0
                if audio_is_playing(snd_NSMBU_vine_up)
                    audio_stop_sound(snd_NSMBU_vine_up)
            }
            else
            {
                if keyboard_check(global.lanzar_agarrar)
                    image_speed = 0.6
                else
                    image_speed = 0.5
                if (!audio_is_playing(snd_NSMBU_vine_up))
                    audio_play_sound(snd_NSMBU_vine_up, 1, true)
            }
        }
        else if (sprite_index == scr_NSMBU_marioclimb_start())
        {
            if (image_index >= 3.5)
            {
                sprite_index = scr_marioclimb()
                image_index = 0
            }
            else
                image_speed = 0.5
        }
        else
        {
            if (global.powerup == -43)
                sprite_index = scr_marioclimb()
            else
                sprite_index = scr_NSMBU_marioclimb_start()
            image_index = 0
        }
    }
}
else if (isduck == 1)
{
    flip = 0
    jumpnow_temp = 0
    if (global.powerup == 0)
        mask_index = spr_smallduckmask
    else
        mask_index = spr_smallmask
    if (airspin == 1)
    {
        if (slide == 1)
        {
            if (sprite_index != spr_NSMBU_mario_penguin_slide_airspin && (!instance_exists(obj_mario_transform2)))
                image_index = 0
            sprite_index = spr_NSMBU_mario_penguin_slide_airspin
        }
        else
        {
            if (sprite_index != scr_NSMBU_spincrouch() && (!instance_exists(obj_mario_transform2)))
                image_index = 0
            sprite_index = scr_NSMBU_spincrouch()
        }
        if (!instance_exists(obj_mario_transform2))
            airspin_count += 0.7
        if (airspin_count < 11.9)
            image_speed = 0.7
        else
        {
            if (slide == 1)
                sprite_index = spr_NSMBU_mario_penguin_slide_jump
            else
                sprite_index = scr_NSMBU_crouch_jump()
            image_index = 22
            image_speed = 0.5
            airspin = 2
            airspin_count = 0
        }
    }
    else if (state == 2)
    {
        if (slide == 1)
        {
            if (sprite_index != spr_NSMBU_mario_penguin_slide_jump && (!instance_exists(obj_mario_transform2)))
                image_index = 0
            sprite_index = spr_NSMBU_mario_penguin_slide_jump
            if (image_index < 33)
                image_speed = 0.5
            else
            {
                image_speed = 0
                image_index = 33
            }
        }
        else
        {
            if (sprite_index != scr_NSMBU_crouch_jump() && (!instance_exists(obj_mario_transform2)))
                image_index = 0
            sprite_index = scr_NSMBU_crouch_jump()
            if (image_index < 25)
                image_speed = 0.5
            else
            {
                image_speed = 0
                image_index = 25
            }
        }
    }
    else
    {
        if (slide == 1)
        {
            if (sprite_index == spr_NSMBU_mario_penguin_slide || sprite_index == spr_NSMBU_mario_penguin_slide_jump)
            {
                sprite_index = spr_NSMBU_mario_penguin_slide
                image_speed = 0.5
            }
            else
            {
                sprite_index = spr_NSMBU_mario_penguin_slide_start
                if (image_index >= 5.5)
                {
                    sprite_index = spr_NSMBU_mario_penguin_slide
                    image_index = 0
                }
                else
                    image_speed = 0.5
            }
        }
        else if (sprite_index == scr_NSMBU_crouch_jump())
        {
            sprite_index = scr_NSMBU_crouch_fall()
            image_index = 0
        }
        else if (sprite_index == scr_NSMBU_crouch_fall())
        {
				if global.jugador = 0
					var crh_f = 7
				else
					var crh_f = 9
            if (image_index < crh_f)
                image_speed = 0.5
            else
            {
                sprite_index = scr_NSMBU_crouch_idle()
                image_index = 0
                image_speed = 0.5
            }
        }
        else if (sprite_index == scr_NSMBU_crouch_idle())
            image_speed = 0.5
        else if (sprite_index == scr_NSMBU_crouch())
        {
            if (image_index >= 2.5)
                sprite_index = scr_NSMBU_crouch_idle()
            else
                image_speed = 0.5
        }
        else if (sprite_index == scr_NSMBU_acrouch())
        {
            if (image_index <= 1)
                sprite_index = scr_NSMBU_crouch_idle()
            else
                image_speed = -1
        }
        else
        {
            sprite_index = scr_NSMBU_crouch()
            image_index = 0
            crouch_temp = 1
        }
        if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0)
            direct = 1
        else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0)
            direct = -1
    }
}
if ((sprite_index != scr_NSMBU_skid() && sprite_index != scr_NSMBU_skid_right() && sprite_index != scr_NSMBU_skid_left() && skidnow == 1 && (!instance_exists(obj_mario_transform2))) || (state > 1 && skidnow == 1))
{
    audio_stop_sound(scr_snd_skid())
    skidnow = 0
}
if (audio_is_playing(scr_snd_skid()) && skidnow == 0)
    audio_stop_sound(scr_snd_skid())
if (sprite_index != scr_marioclimb() && sprite_index != scr_NSMBU_marioclimb_start() && audio_is_playing(snd_NSMBU_vine_up) && (!instance_exists(obj_mario_transform2)))
{
    audio_stop_sound(snd_NSMBU_vine_up)
    skidnow = 0
}


