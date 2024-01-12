/// @description Handles Mario's sprites
if (global.pp == 0)
{
    if instance_exists(obj_levelmanager)
        pmeter = obj_levelmanager.pmeter
    if (frog_jump != 0 && state != 1)
        frog_jump = 0
    if (global.powerup == -29 && isswim == 1)
        isduck = 0
    if (link_transform == 1)
    {
        sprite_index = spr_SMB_link_transform
        image_speed = 0.15
        exit
    }
    if (isduck == 0)
    {
        switch global.powerup
        {
            case 0:
				if instance_exists(obj_yoshi_blue)
					mask_index = spr_bigmask
				else
					mask_index = spr_smallmask
                break
            case -85:
                mask_index = spr_smallmask
                break
            case -77:
                mask_index = spr_megamask
                break
            case -82:
                mask_index = spr_smallmask
                break
            default:
                mask_index = spr_bigmask
        }

        if (global.powerup == 2 || global.powerup == -50 || global.powerup == -46)
        {
            if (firing > 0)
                firing--
        }
        else
            firing = 0
        if (global.powerup == -39)
        {
            if (state == 2)
            {
                if (wiggle > 1)
                    wiggle--
                if (wiggle > 12)
                    image_index = 3
                else if (wiggle > 8)
                    image_index = 2
                else if (wiggle > 4)
                    image_index = 1
                else if (wiggle > 1)
                    image_index = 2
                else if (wiggle == 1)
                    image_index = 1
            }
            else
                wiggle = 0
        }
        else
            wiggle = 0
        if (holding == 0)
        {
			//Skid when moving and facing in opposite directions
            if (state < 2 && pmeter > 5 && global.powerup != -29 && ((direct == 1 && hspeed < 0 && keyboard_check(global.derecha)) || (direct == -1 && hspeed > 0 && keyboard_check(global.izquierda))))
            {
                sprite_index = scr_marioskid()
                image_speed = 0
                image_index = 0
                if (skidnow == 0)
                {
                    skidnow = 1
                    if (global.apariencia != 0)
                        audio_play_sound(scr_snd_skid(), 1, true)
                }
            }
            else if (state == 0)
            {
                if (caped > 0)
                {
                    if instance_exists(obj_mario_transform2)
                        image_speed = 0
                    else
                        image_speed = 0.3
                    sprite_index = scr_mariowarp()
                }
                else if (firing > 0)
                {
                    image_speed = 0
                    if (firing < 6 && firing > 3)
                        image_index = 1
                    else
                    {
                        image_index = 0
                        sprite_index = scr_marioshoot()
                    }
                }
                else if instance_exists(obj_mario_transform2)
                {
                    if (global.powerup != -29 and skidnow == 1)
                    {
                        sprite_index = scr_marioskid()
                        audio_stop_sound(scr_snd_skid())
                    }
                    else if (obj_mario_transform2.m_hspeed != 0)
                        sprite_index = scr_mariowalk()
                    else
                        sprite_index = scr_marioidle()
                }
                else if (arrow > 0)
                {
                    sprite_index = spr_SMB_link_arrow_idle
                    image_speed = 0
                    image_index = (arrow - 1)
                }
                else if (global.powerup == -29 && isswim == 1)
                {
                    sprite_index = scr_marioswim_idle()
                    image_speed = 0.15
                }
                else
                {
                      
							sprite_index = scr_marioidle()
                    image_speed = 0
                    if (isup == 1)
                        sprite_index = scr_marioup()
                }
            }
            else if (state == 1)
            {
                if (caped > 0)
                {
                    if instance_exists(obj_mario_transform2)
                        image_speed = 0
                    else
                        image_speed = 0.3
                    sprite_index = scr_mariowarp()
                }
                else if (firing > 0)
                {
                    image_speed = 0
                    if (firing < 6 && firing > 3)
                        image_index = 1
                    else
                    {
                        image_index = 0
                        sprite_index = scr_marioshoot()
                    }
                }
                else if instance_exists(obj_mario_transform2)
                {
                    if (skidnow == 1)
                    {
                        sprite_index = scr_marioskid()
                        image_speed = 0
                        image_index = 0
                        audio_stop_sound(scr_snd_skid())
                    }
                    else
                    {
                        image_speed = 0
                        if (pmeter < 6)
                            sprite_index = scr_mariowalk()
                        else if (global.apariencia == 0)
                            sprite_index = scr_mariowalk()
                        else
                            sprite_index = scr_mariorun()
                    }
                }
                else if (global.powerup == -29)
                {
                    if (isswim == 1)
                    {
                        sprite_index = scr_marioswim()
                        if (global.key_br == 1)
                            image_speed = (0.1 + (0.1 * global.key_br))
                        else
                            image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                    }
                    else
                    {
                        if (frog_jump == 0)
                        {
                            audio_stop_sound(snd_SMB_smalljump)
                            audio_play_sound(snd_SMB_smalljump, 0, false)
                            frog_jump = 1
                        }
                        if (frog_jump == 1 && image_index >= 3.75)
                            frog_jump = 0
                        sprite_index = scr_mariowalk()
                        image_speed = abs((hspeed / 10))
                    }
                }
                else if (arrow > 0)
                {
                    sprite_index = scr_link_arrow_walk(arrow)
                    image_speed = 0.15
                }
                else
                {
                    if (abs((hspeed / 5)) > 0.3)
                        var spd_i = 0.3
                    else
                        spd_i = abs((hspeed / 5))
                    image_speed = spd_i
                    if (pmeter < 6 || global.apariencia == 0)
                        sprite_index = scr_mariowalk()
                    else
                        sprite_index = scr_mariorun()
                }
            }
            else if (state == 2)
            {
                if (isswim == 1)
                {
                    if (caped > 0)
                    {
                        if instance_exists(obj_mario_transform2)
                            image_speed = 0
                        else
                            image_speed = 0.3
                        sprite_index = scr_mariowarp()
                    }
                    else if (firing > 0)
                    {
                        image_speed = 0
                        if (firing < 6 && firing > 3)
                            image_index = 1
                        else
                        {
                            image_index = 0
                            sprite_index = scr_marioshoot()
                        }
                    }
                    else if (global.powerup == -29)
                    {
                        if (swimtype == 0)
                        {
                            if (hspeed == 0)
                            {
                                sprite_index = scr_marioswim_idle()
                                image_speed = 0.15
                            }
                            else
                            {
                                sprite_index = scr_marioswim()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                        }
                        else if (swimtype == 1)
                        {
                            if (x != xprevious || y != yprevious)
                            {
                                sprite_index = scr_marioswim2()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                            else
                            {
                                sprite_index = scr_marioswim_idle()
                                image_speed = 0.15
                            }
                        }
                        else if (swimtype == 2)
                        {
                            if (x != xprevious || y != yprevious)
                            {
                                sprite_index = scr_marioswim3()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                            else
                            {
                                sprite_index = scr_marioswim_idle()
                                image_speed = 0.15
                            }
                        }
                    }
                    else if (noisy == 0)
                    {
                        if (global.powerup == -85 && arrow > 0)
                        {
                            if (sprite_index == scr_link_arrow_swim(arrow))
                            {
                                if (image_index >= 2.85)
                                {
                                    sprite_index = scr_link_arrow_jump(arrow)
                                    image_index = 0
                                }
                                else
                                    image_speed = 0.15
                            }
                            else
                            {
                                sprite_index = scr_link_arrow_jump(arrow)
                                image_speed = 0.15
                            }
                        }
                        else if (sprite_index == scr_marioswim())
                        {
                            if ((global.powerup == -85 && image_index >= 2.85) || (global.apariencia == 0 && image_index >= 4.75) || (global.apariencia != 0 && image_index >= 2.85))
                            {
                                sprite_index = scr_marioswimhold()
                                image_index = 0
                            }
                            else if (global.apariencia == 0 && global.powerup != -85)
                                image_speed = 0.25
                            else
                                image_speed = 0.15
                        }
                        else
                        {
                            sprite_index = scr_marioswimhold()
                            image_speed = 0.15
                        }
                    }
                }
                else if (stompstyle == 1)
                {
                    if instance_exists(obj_mario_transform2)
                        image_speed = 0
                    else
                        image_speed = 0.4
                    sprite_index = scr_mariowarp()
                }
                else if (caped > 0)
                {
                    if instance_exists(obj_mario_transform2)
                        image_speed = 0
                    else
                        image_speed = 0.3
                    sprite_index = scr_mariowarp()
                }
                else if (firing > 0)
                {
                    image_speed = 0
                    if (firing < 6 && firing > 3)
                        image_index = 1
                    else
                        image_index = 0
                    sprite_index = scr_marioshoot()
                }
                else if (modo_vuelo == 1)
                {
                    if (place_free(x, (y + 1)) && vspeed > 0)
                    {
                        if (sprite_index != scr_mario_cap_fly_acender() && sprite_index != scr_mario_cap_fly_decender() && sprite_index != scr_mario_cap_fly_acender_decender())
                        {
                            sprite_index = scr_mario_cap_fly()
                            image_speed = 0.2
                        }
                    }
                    else if (sprite_index != scr_mario_cap_fly_acender())
                    {
                        sprite_index = scr_mario_cap_fly()
                        image_speed = 0
                    }
                }
                else if (pmeter < 6)
                {
                    if (global.apariencia == 1 && global.powerup != -29 && global.powerup != 0 && instance_exists(obj_invincibility))
                    {
                        sprite_index = scr_mariojumpstar()
                        image_speed = 0.4
                    }
                    else if (arrow > 0)
                    {
                        sprite_index = scr_link_arrow_jump(arrow)
                        image_speed = 0
                        if (vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                            image_index = 1
                        else
                            image_index = 0
                    }
                    else
                    {
                        sprite_index = scr_mariojump()
                        if (global.powerup == -78)
                            image_speed = 0.2
                        if (global.powerup != -39)
                        {
                            if (vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                            {
                                if (global.powerup == -78 && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))) && jumpnow != 0 && s_hen == 1)
                                {
                                    audio_play_sound(snd_SMB_hen_jump_fall, 0, false)
                                    s_hen = 0
									sprite_index = scr_mariodrop()
                                }
                                else if (global.apariencia == 0 && jumpnow == 0)
                                {
									sprite_index = scr_mariowalk()
                                    image_index = 0
                                }
                                else
									sprite_index = scr_mariodrop()
                            }
                        }
                        else if (wiggle == 0)
                        {
                            image_speed = 0
                            if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                                image_index = 3
                            else
                                image_index = 0
                        }
                    }
                }
                else if (global.apariencia == 1 && global.powerup != 0 && global.powerup != -39 && global.powerup != -29 && instance_exists(obj_invincibility))
                {
                    sprite_index = scr_mariojumpstar()
                    image_speed = 0.4
                }
                else if collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0)
                {
                    if (global.apariencia == 0 && jumpnow == 0)
                    {
						sprite_index = scr_mariowalk()
                        image_index = 0
                    }
                    else
						sprite_index = scr_mariodrop()
                }
                else
                {
                    if (global.apariencia == 0)
                    {
                        if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                        {
                            if (global.powerup == -78 && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))) && jumpnow != 0 && s_hen == 1)
                            {
                                audio_play_sound(snd_SMB_hen_jump_fall, 0, false)
                                s_hen = 0
								sprite_index = scr_mariodrop()
                            }
                            else
								sprite_index = scr_mariodrop()
                        }
                        else
                        {
							sprite_index = scr_mariojump()
                            if (global.powerup == -78)
                                image_speed = 0.2
                        }
                    }
                    else if (global.powerup == -29)
                    {
                        if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
							sprite_index = scr_mariodrop()
                        else
							sprite_index = scr_mariojump()
                    }
                    else
                        sprite_index = scr_mariorunjump()
                    if (global.powerup == -39)
                    {
                        if (wiggle == 0)
                        {
                            image_speed = 0
                            if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                                image_index = 0
                            else
                                image_index = 2
                        }
                    }
        }
        }
        }
        else
        {
            if (state == 0)
            {
                if (global.powerup == -29 && isswim == 1)
                {
                    sprite_index = scr_marioswim_hold_idle()
                    image_speed = 0.15
                }
                else
                {
                    image_speed = 0
                    image_index = 0.99
                }
            }
            if (state == 1)
            {
                if (turning == 0)
                {
                    if (abs((hspeed / 5)) > 0.3)
                        spd_i = 0.3
                    else
                        spd_i = abs((hspeed / 5))
                    image_speed = spd_i
                }
                else
                {
                    image_speed = 0
                    image_index = 1
                }
            }
            if (state == 2)
            {
                if (turning == 0)
                {
                    if (global.powerup == -29 && isswim == 1)
                    {
                        if (swimtype == 0)
                        {
                            if (hspeed == 0)
                            {
                                sprite_index = scr_marioswim_hold_idle()
                                image_speed = 0.15
                            }
                            else
                            {
                                sprite_index = scr_marioswimhold()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                        }
                        else if (swimtype == 1)
                        {
                            if (x != xprevious || y != yprevious)
                            {
                                sprite_index = scr_marioswimhold()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                            else
                            {
                                sprite_index = scr_marioswim_hold_idle()
                                image_speed = 0.15
                            }
                        }
                        else if (swimtype == 2)
                        {
                            if (x != xprevious || y != yprevious)
                            {
                                sprite_index = scr_marioswimhold()
                                if (global.key_br == 1)
                                    image_speed = (0.1 + (0.1 * global.key_br))
                                else
                                    image_speed = (0.1 + (0.1 * keyboard_check(global.lanzar_agarrar)))
                            }
                            else
                            {
                                sprite_index = scr_marioswim_hold_idle()
                                image_speed = 0.15
                            }
                        }
                    }
                    else if (isswim == 1 && (holding == 2 || holding == 1))
                    {
                        image_speed = 0
                        if (vspeed > 0)
                            image_speed = 0.16
                        else
                            image_index = 0
                    }
                    else if (holding == 2 && stompstyle == 1 && isswim == 0)
                        image_speed = 0.4
                    else
                    {
                        image_speed = 0
                        if (global.powerup == -85)
                        {
                            if (vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                                image_index = 1
                            else
                                image_index = 0
                        }
                        else if (global.powerup != -39)
                        {
                            if (global.powerup != 0 && global.apariencia == 1)
                                image_index = 2
                            else
                                image_index = 1
                        }
                        else if (wiggle == 0)
                        {
                            if (vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                                image_index = 2
                            else
                                image_index = 1
                        }
                    }
                }
                else
                {
                    image_speed = 0
                    image_index = 1
                }
            }
            if (turning == 1)
                sprite_index = scr_mariowarp()
            else if (holding == 2 && isswim == 1 && gravity != 0 && global.powerup == -85)
                sprite_index = spr_SMB_link_hold_swim
            else if (holding == 2 && isswim == 1 && gravity != 0 && global.powerup != -29)
                sprite_index = scr_marioswimhold()
            else if (holding == 2 && stompstyle == 1 && isswim == 0)
                sprite_index = scr_mariowarp()
            else if (holding == 1 || holding == 2)
            {
                if (global.apariencia == 1 && global.powerup == -39 && vspeed != 0)
                    sprite_index = scr_mariojumphold()
                else if (global.powerup == -29 && isswim == 0)
                {
                    if (pmeter > 5 && state < 2)
                        sprite_index = scr_mariorun()
                    else
                        sprite_index = scr_mariohold()
                }
                else if (global.powerup == -29 && isswim == 1 && state == 1)
                    sprite_index = scr_marioswimhold()
                else if (global.powerup == -85 && state == 2)
                    sprite_index = spr_SMB_link_hold_jump
                else if (global.powerup != -29)
                    sprite_index = scr_mariohold()
                if (isuphold == 1 && jumpnow == 0 && state == 0)
                    sprite_index = scr_mariouphold()
            }
        }
        if (state == 3)
        {
            sprite_index = scr_marioclimb()
            if (global.apariencia < 2)
            {
                if (speed == 0)
                    image_speed = 0
                else
                    image_speed = 0.15
            }
            else if (global.apariencia == 2)
            {
                if (speed == 0)
                {
                    image_speed = 0
                    image_index = 2
                }
                else
                {
                    image_speed = 0.25
                    if (image_index > 1.8)
                        image_index = 0
                }
            }
        }
        else if (state == 4)
        {
            sprite_index = scr_marioskid()
            if (skidnow == 0 && global.apariencia != 0)
            {
                skidnow = 1
                audio_play_sound(scr_snd_skid(), 1, true)
            }
        }
        if (iamkicking == 1 && stompstyle == 0 && (global.apariencia != 0 || global.powerup == -85 || global.powerup == -80))
        {
            if (global.powerup == -29 && isswim == 1)
            {
            }
            else
                sprite_index = scr_mariokick()
        }
    }
    else if (isduck == 1)
    {
        switch global.powerup
        {
            case 0:
                if instance_exists(obj_yoshi_blue)
                    mask_index = spr_bigmask
                else
                    mask_index = spr_smallduckmask
                break
            case -85:
                mask_index = spr_smallduckmask
                break
            case -77:
                if instance_exists(obj_kuriboshoe)
                    mask_index = spr_megamask
                else
                    mask_index = spr_mega_mask_duck
                break
            default:
                mask_index = spr_smallmask
        }

        if (sprite_index != spr_SMB_link_shield)
        {
            if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0 && (global.apariencia != 0 || (global.apariencia == 0 && vspeed == 0) || (global.powerup == -80)))
                direct = 1
            else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0 && (global.apariencia != 0 || (global.apariencia == 0 && vspeed == 0) || (global.powerup == -80)))
                direct = -1
        }
        if (global.powerup == -39)
        {
            if (state == 2)
            {
                if (wiggle > 1)
                    wiggle--
                if (wiggle > 12)
                    image_index = 3
                else if (wiggle > 8)
                    image_index = 2
                else if (wiggle > 4)
                    image_index = 1
                else if (wiggle > 1)
                    image_index = 2
                else if (wiggle == 1)
                    image_index = 1
            }
            else
                wiggle = 0
        }
        else
            wiggle = 0
        if (isduckhold == 1)
        {
            sprite_index = scr_marioduckhold()
            if (jump_loaded == 60)
                image_speed = 0.3
            else
            {
                image_speed = 0
                image_index = 0
            }
        }
        else
        {
			sprite_index = scr_marioduck()
            if (wiggle == 0)
            {
                if ((place_free(x, (y + 1)) && vspeed > 0 && global.powerup == -39) || (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0) && global.powerup == -39))
                    image_index = 2
                else if (jump_loaded == 60)
                    image_speed = 0.3
                else
                {
                    image_speed = 0
                    image_index = 0
                }
            }
        }
    }
    if (sprite_index != scr_marioskid() && skidnow == 1 && (!instance_exists(obj_mario_transform2)))
    {
        audio_stop_sound(scr_snd_skid())
        skidnow = 0
    }
}