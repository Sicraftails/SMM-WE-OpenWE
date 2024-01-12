if (gravity == 0 && (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_lava_water_drybones, 0, 0) && (instance_exists(obj_kuribo_drybones) || (global.powerup == -38 && slide == 1)))))
{
    if (vspeed >= 0 && (!instance_exists(obj_mario_transform2)))
    {
        statedelay = 0
        if (hspeed == 0)
            state = 0
        else
            state = 1
        yview = (y + 32)
        if (global.yoshi == 0 && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_modelsizable, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_modelsolid, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_rockparent, 0, 0))) && (collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0)))
            event_user(0)
    }
    else if (vspeed < 0)
        state = 2
    if (groundpount == 1)
        groundpount = 0
    if (triple_jump != 0)
    {
        triple_count++
        if (triple_count > 6)
        {
            triple_jump = 0
            triple_count = 0
        }
    }
}
else
{
    statedelay++
    if (statedelay > 4)
        state = 2
}
if (groundpount == 0 && disablecontrols == 2)
    disablecontrols = 0
if (groundpount == 1)
{
    vspeed = 0
    gravity = 0
}
else if (groundpount == 2)
{
    if (vspeed > 6)
        vspeed = 6
}
else if (vspeed > 4)
    vspeed = 4
if (gp_limit > 0)
    gp_limit--
if (keyboard_check_pressed(global.abajo) && (helice_fly == 0 || helice_fly == 5) && global.apariencia == 3 && disablecontrols == 0 && (!(place_meeting(x, y, obj_bortice))) && state == 2 && isduck == 0 && holding == 0 && iamkicking == 0 && global.yoshi == 0 && inclown == 0 && airspin != 1 && groundpount == 0 && gp_limit == 0 && walljump == 0 && stompstyle == 0 && doublejump == 0)
{
    image_index = 0
    groundpount = 1
    airspin = 0
    doublejump = 0
    triple_jump = 0
    triple_count = 0
    hspeed = 0
    disablecontrols = 2
    audio_play_sound(snd_NSMBU_groundpound, 0, false)
}
if (keyboard_check_pressed(global.arriba) && global.apariencia == 3 && disablecontrols == 2 && state == 2 && groundpount != 0 && stompstyle == 0)
{
    if (groundpount == 1)
        groundpount_cancelled = 1
    else
    {
        sprite_index = scr_NSMBU_groundpound_canceled()
        image_speed = 0.6
        image_index = 0
        groundpount = 0
        disablecontrols = 0
    }
    gp_limit = 25
}
if (keyboard_check(global.lanzar_agarrar) || global.key_br == 1)
{
    if (helice_fly > 0 && helice_fly < 5)
        hspeedmax = (1 + abs((1 * instance_number(obj_invincibility))))
    else
        hspeedmax = (3 + abs((1 * instance_number(obj_invincibility))))
}
else if (helice_fly > 0 && helice_fly < 5)
    hspeedmax = (1 + abs((1 * instance_number(obj_invincibility))))
else
    hspeedmax = (1.3 + abs((1 * instance_number(obj_invincibility))))
if (keyboard_check_pressed(global.saltar) && disablecontrols == 0 && jumpnow == 0 && state < 2)
{
    if (pmeter >= 6 && ((instance_exists(obj_invincibility) && abs(hspeed) > 3.5) || ((!instance_exists(obj_invincibility)) && abs(hspeed) > 2.5)) && isduck == 0 && holding == 0)
    {
        if (triple_jump == 3)
            triple_jump = 0
        else
            triple_jump++
        triple_count = 0
    }
    else
        triple_jump = 0
    if (triple_jump == 3)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -3.65
        else
            vspeed = -4.65
    }
    else if (abs(hspeed) > 2.8)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -3.3
        else
            vspeed = -4.3
    }
    else if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    if (triple_jump == 2)
    {
        audio_play_sound(snd_NSMBU_triplejump_0, 0, false)
        with (instance_create(x, (y + 32), obj_smoke))
            sprite_index = spr_NSMBU_smoke_triplejump
    }
    else if (triple_jump == 3)
    {
        with (instance_create(x, (y + 32), obj_smoke))
            sprite_index = spr_NSMBU_smoke_triplejump
        audio_play_sound(choose(snd_NSMBU_triplejump_1, snd_NSMBU_triplejump_2, snd_NSMBU_triplejump_3), 0, false)
    }
    jumpnow = 1
    state = 2
    gp_limit = 8
}
if ((keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding < 3 && isduck == 0 && jumpnow == 0 && state < 2 && global.powerup != -30) || (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && isduck == 0 && global.yoshi > 0 && vspeed == 0 && jumpnow == 0 && state < 2))
{
    triple_jump = 0
    triple_count = 0
    image_index = 0
    if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (global.powerup == -43)
            vspeed = -3.625
        else
            vspeed = -2.3
    }
    else if (global.powerup == -43)
        vspeed = -4.625
    else
        vspeed = -3.3
    jumpnow = 1
    state = 2
    isduck = 0
    y--
    stompstyle = 1
    audio_play_sound(scr_snd_spinjump(), 0, false)
    alarm[7] = 10
    if (global.yoshi == 2)
    {
        global.yoshi = 0
        holding = 0
        if instance_exists(obj_kuriboshoe)
        {
            with (obj_kuriboshoe)
                event_user(0)
        }
    }
    else if (global.yoshi > 0)
    {
        global.yoshi = 0
        holding = 0
        if (direct > 0)
            hspeed = -1.2
        else
            hspeed = 1.2
        if instance_exists(obj_yoshi2)
        {
            with (obj_yoshi2)
                event_user(1)
        }
    }
}
else if ((keyboard_check_pressed(global.saltar) && disablecontrols == 0 && holding == 3 && jumpnow == 0 && state < 2) || (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && state == 2 && global.yoshi > 0 && vspeed != 0))
{
    if (pmeter >= 6 && ((instance_exists(obj_invincibility) && abs(hspeed) > 3.5) || ((!instance_exists(obj_invincibility)) && abs(hspeed) > 2.5)) && isduck == 0 && holding == 0)
    {
        if (triple_jump == 3)
            triple_jump = 0
        else
            triple_jump++
        triple_count = 0
    }
    else
        triple_jump = 0
    if (triple_jump == 3)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -3.65
        else
            vspeed = -4.65
    }
    else if (abs(hspeed) > 2.8)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -3.3
        else
            vspeed = -4.3
    }
    else if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    if (triple_jump == 2)
        audio_play_sound(snd_NSMBU_triplejump_0, 0, false)
    else if (triple_jump == 3)
        audio_play_sound(choose(snd_NSMBU_triplejump_1, snd_NSMBU_triplejump_2, snd_NSMBU_triplejump_3), 0, false)
    if (state == 2)
    {
        if (global.yoshi == 2)
        {
            global.yoshi = 0
            holding = 0
            if instance_exists(obj_kuriboshoe)
            {
                with (obj_kuriboshoe)
                    event_user(0)
            }
        }
        else if (global.yoshi > 0)
        {
            global.yoshi = 0
            holding = 0
            if (direct > 0)
                hspeed = -1.2
            else
                hspeed = 1.2
            if instance_exists(obj_yoshi2)
            {
                with (obj_yoshi2)
                    event_user(1)
            }
        }
    }
    jumpnow = 1
    state = 2
    gp_limit = 8
}
if (keyboard_check_pressed(global.abajo) && disablecontrols == 0 && global.powerup == -38 && holding == 0 && pmeter > 5 && hspeed != 0 && state < 2 && slide == 0)
{
    slide = 1
    image_index = 0
    hspeed += (0.5 * direct)
    audio_play_sound(snd_NSMBU_penguin_slide, 0, false)
    if (!instance_exists(obj_penguin_attack))
        instance_create((x + 5), (y + 12), obj_penguin_attack)
}
if (slide == 1 && (keyboard_check_released(global.abajo) || hspeed == 0))
    slide = 2
if (slide > 1)
{
    slide++
    if (slide > 10)
        slide = 0
}
if (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && global.powerup == -30 && global.yoshi == 0 && isduck == 0 && walljump == 0 && holding != 3 && inclown == 0 && (helice_fly == 0 || helice_fly == 2))
{
    triple_jump = 0
    triple_count = 0
    image_index = 0
    if (helice_fly == 0)
    {
        vspeed = -1
        helice_fly = 1
        fly_cap = 1
        jumpnow = 1
        state = 2
        isduck = 0
        y--
        audio_play_sound(snd_NSMBU_helice, 0, false)
        audio_play_sound(snd_NSMBU_helice_voice, 0, false)
    }
    else if (helice_fly == 2 || (helice_fly == 3 && helice_fly_temp == 1))
    {
        helice_fly = 3
        audio_play_sound(snd_NSMBU_helice_down_spin, 0, false)
    }
}
if (fly_cap > 0)
{
    if (fly_cap > 48)
        fly_cap = 0
    else
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
        {
            if (fly_cap > 36 && vspeed < 0)
                vspeed += 0.05
            else if (vspeed < -2.8)
                vspeed = -2.8
            else
                vspeed -= 0.5
        }
        else if (fly_cap > 38 && vspeed < 0)
            vspeed += 0.05
        else if (vspeed < -3.2)
            vspeed = -3.2
        else
            vspeed -= 0.5
        fly_cap += 1
        jumpnow = 1
    }
}
if (keyboard_check(global.abajo) && global.powerup == -30 && ((helice_fly > 1 && helice_fly != 5) || (helice_fly == 1 && fly_cap > 15)))
{
    if (helice_fly != 4)
    {
        audio_stop_sound(snd_NSMBU_helice_drill_spin)
        audio_play_sound(snd_NSMBU_helice_drill_spin, 0, false)
    }
    if (helice_fly == 1)
    {
        vspeed = 0.5
        fly_cap = 0
    }
    helice_fly = 4
}
else if (vspeed > 0.5 && helice_fly == 4 && global.powerup == -30)
    helice_fly = 2
if ((sprite_index == spr_NSMBU_mario_helice_fall || spr_NSMBU_mario_helice_fall_hold) && image_index > 9 && helice_fly == 2 && (!audio_is_playing(snd_NSMBU_helice_planear)))
    audio_play_sound(snd_NSMBU_helice_planear, 1, true)
else if (helice_fly != 2 && audio_is_playing(snd_NSMBU_helice_planear))
    audio_stop_sound(snd_NSMBU_helice_planear)
if (global.powerup == -43 && sprite_index == spr_NSMBU_mario_arcon_fly_d && (!audio_is_playing(snd_NSMBU_squirrel_plan)))
    audio_play_sound(snd_NSMBU_squirrel_plan, 1, true)
else if (sprite_index != spr_NSMBU_mario_arcon_fly_d && sprite_index != spr_NSMBU_mario_arcon_airspin && audio_is_playing(snd_NSMBU_squirrel_plan))
    audio_stop_sound(snd_NSMBU_squirrel_plan)
if (keyboard_check_pressed(global.saltar_spin) && global.apariencia == 3 && disablecontrols == 0 && state == 2 && global.yoshi == 0 && airspin == 0 && walljump != 1 && inclown == 0 && groundpount != 1 && stompstyle == 0 && (global.powerup != -43 || doublejump == 2 || holding == 2) && (global.powerup != -30 || helice_fly == 5))
{
    if (triple_jump == 0)
        image_index = 0
    airspin = 1
    groundpount = 0
    gp_limit = 0
    audio_play_sound(snd_NSMBU_airspin, 0, false)
}
if ((keyboard_check_released(global.saltar) && jumpnow == 1) || (keyboard_check_released(global.saltar_spin) && jumpnow == 1))
    jumpnow = 2
if (isduck == 1 && state != 2)
{
    if (slide == 1)
    {
        if (hspeed > 0)
            hspeed -= 0.005
        if (hspeed < 0)
            hspeed += 0.005
        if (abs(hspeed) < 0.005)
            hspeed = 0
    }
    else if (snow == 1)
    {
        if (hspeed > 0)
            hspeed -= 0.02
        if (hspeed < 0)
            hspeed += 0.02
        if (abs(hspeed) < 0.02)
            hspeed = 0
    }
    else
    {
        if (hspeed > 0)
            hspeed -= 0.05
        if (hspeed < 0)
            hspeed += 0.05
        if (abs(hspeed) < 0.05)
            hspeed = 0
    }
}
else
{
    if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0 && (walljump_ex == 0 || (walljump_ex == 1 && hspeed > 0)))
    {
        if ((sprite_index == spr_NSMBU_mario_arcon_fly_start || sprite_index == spr_NSMBU_mario_arcon_fly) && direct == -1)
        {
            sprite_index = spr_NSMBU_mario_arcon_fly_turn
            image_index = 15
        }
        if (hspeed < hspeedmax)
        {
            if (snow == 1 && gravity == 0)
            {
                if (hspeed < 0)
                    hspeed += 0.03
                else
                    hspeed += 0.05
            }
            else
            {
                if (hspeed < 0)
                    hspeed += 0.075
                hspeed += 0.06
            }
        }
        if (walljump == 0)
            direct = 1
        direct_turn = 1
    }
    else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0 && (walljump_ex == 0 || (walljump_ex == 1 && hspeed < 0)))
    {
        if ((sprite_index == spr_NSMBU_mario_arcon_fly_start || sprite_index == spr_NSMBU_mario_arcon_fly) && direct == 1)
        {
            sprite_index = spr_NSMBU_mario_arcon_fly_turn
            image_index = 0
        }
        if (hspeed > (-hspeedmax))
        {
            if (snow == 1 && gravity == 0)
            {
                if (hspeed > 0)
                    hspeed += -0.03
                else
                    hspeed += -0.05
            }
            else
            {
                if (hspeed > 0)
                    hspeed += -0.075
                hspeed += -0.06
            }
        }
        if (walljump == 0 && sprite_index != spr_NSMBU_mario_arcon_fly_turn)
            direct = -1
        direct_turn = -1
    }
    else if (state != 2 || (global.powerup == -30 && helice_fly > 0 && helice_fly < 5))
    {
        if (snow == 1)
        {
            if (hspeed > 0)
                hspeed -= 0.005
            else if (hspeed < 0)
                hspeed += 0.005
            if (abs(hspeed) < 0.005)
                hspeed = 0
        }
        else
        {
            if (hspeed > 0)
                hspeed -= 0.05
            else if (hspeed < 0)
                hspeed += 0.05
            if (abs(hspeed) < 0.05)
                hspeed = 0
        }
    }
    if (state != 2 && abs(hspeed) > hspeedmax)
    {
        if (hspeed > 0)
            hspeed -= 0.025
        else if (hspeed < 0)
            hspeed += 0.025
        if (abs(hspeed) < 0.025)
            hspeed = 0
    }
}
if (state == 2 || statedelay > 0)
{
    if (pmeter < 6 && triple_jump != 0)
        triple_jump = 0
    if (vspeed > 0 && isduck == 0 && groundpount == 0 && walljump == 0 && (helice_fly == 0 || helice_fly == 5) && holding == 0 && global.yoshi == 0)
    {
        if (keyboard_check(global.derecha) && direct == 1)
        {
            if (collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_solid, false, true) || collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_physicssolid, false, true) || collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_bullebill_base, false, true) || collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_onewaygate_left, false, true))
            {
                walljump = 1
                airspin = 0
                airspin_count = 0
                jump_number = 1
                triple_jump = 0
                triple_count = 0
				if (doublejump == 1 or doublejump == 2)
					disable_doublejump = 1
				doublejump = 0
                if (global.powerup != -43)
                    audio_play_sound(snd_NSMBU_desllizarse_walljump, 1, true)
            }
            else
            {
                walljump = 0
                arcon_slide = 0
            }
        }
        else if (keyboard_check(global.izquierda) && direct == -1)
        {
            if (collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, false, true) || collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_physicssolid, false, true) || collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, false, true) || collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, false, true))
            {
                walljump = 1
                airspin = 0
                airspin_count = 0
                jump_number = 1
                triple_jump = 0
                triple_count = 0
				if (doublejump == 1 or doublejump == 2)
					disable_doublejump = 1
				doublejump = 0
                if (global.powerup != -43)
                    audio_play_sound(snd_NSMBU_desllizarse_walljump, 1, true)
            }
            else
            {
                walljump = 0
                arcon_slide = 0
                audio_stop_sound(snd_NSMBU_desllizarse_walljump)
            }
        }
        else
        {
            walljump = 0
            arcon_slide = 0
            audio_stop_sound(snd_NSMBU_desllizarse_walljump)
        }
    }
    if (walljump == 1)
    {
        if (state < 2 || isswim == 1)
            walljump = 0
        if ((direct < 0 && (!(collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, false, true))) && (!(collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, false, true))) && (!(collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, false, true))) && (!(collision_line((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, false, true)))) || (direct > 0 && (!(collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_solid, false, true))) && (!(collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_physicssolid, false, true))) && (!(collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_bullebill_base, false, true))) && (!(collision_line(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 1), obj_onewaygate_left, false, true)))))
        {
            walljump = 0
            if (state == 2)
                image_index = 23
            audio_stop_sound(snd_NSMBU_desllizarse_walljump)
        }
        if (stompstyle == 0)
        {
            if (global.powerup == -43 && arcon_slide < 120)
            {
                gravity = 0
                vspeed = 0
                arcon_slide++
            }
            else
            {
                if (global.modo_noche == 1 && global.bg_level == "sky")
                {
                    gravity = 0.1
                    if (vspeed > 1)
                        vspeed = 1
                }
                else
                {
                    gravity = 0.2
                    if (vspeed > 1.6)
                        vspeed = 1.6
                }
                if (polvo < 6)
                    polvo++
                else
                {
                    if (direct == 1)
                    {
                        with (instance_create(x, y, obj_smoke))
                            image_speed = 0.8
                    }
                    else
                    {
                        with (instance_create((x - 16), y, obj_smoke))
                            image_speed = 0.8
                    }
                    polvo = 0
                }
            }
        }
        if keyboard_check_pressed(global.saltar)
        {
            if (global.modo_noche == 1 && global.bg_level == "sky")
                vspeed = -2.625
            else
                vspeed = -3.625
            jumpnow = 1
            stompstyle = 0
            image_index = 0
            walljump_ex = 1
            alarm[4] = 20
            alarm[11] = 10
            if (direct > 0)
            {
                hspeed = -2.625
                walljump = 2
                direct = -1
                audio_play_sound(choose(snd_NSMBU_walljump1, snd_NSMBU_walljump2), 1, false)
                with (instance_create(bbox_right, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = -1
                }
            }
            else if (direct < 0)
            {
                hspeed = 2.625
                walljump = 2
                direct = 1
                audio_play_sound(choose(snd_NSMBU_walljump1, snd_NSMBU_walljump2), 1, false)
                with (instance_create(bbox_left, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = 1
                }
            }
        }
        else if keyboard_check_pressed(global.saltar_spin)
        {
            if (global.modo_noche == 1 && global.bg_level == "sky")
                vspeed = -2.625
            else
                vspeed = -3.625
            jumpnow = 1
            stompstyle = 1
            walljump_ex = 1
            alarm[4] = 20
            alarm[11] = 20
            if (direct > 0)
            {
                hspeed = -2.625
                walljump = 2
                direct = -1
                audio_play_sound(snd_NSMBU_spinjump, 1, false)
                with (instance_create(bbox_right, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = -1
                }
            }
            else if (direct < 0)
            {
                hspeed = 2.625
                walljump = 2
                direct = 1
                audio_play_sound(snd_NSMBU_spinjump, 1, false)
                with (instance_create(bbox_left, y, obj_smoke))
                {
                    sprite_index = spr_NSMBU_smoke_wall
                    direct = 1
                }
            }
        }
    }
    else
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
        {
            gravity = 0.05
            if (airspin == 1 && vspeed > 0)
            {
                gravity = 0.05
                if (vspeed > 0.2)
                    vspeed = 0.2
            }
            else if (groundpount == 2)
            {
                if (vspeed > 4)
                    vspeed = 4
            }
            else if (helice_fly > 1 && helice_fly < 5)
            {
                switch helice_fly
                {
                    case 2:
                        if (helice_temp == 0)
                        {
                            gravity = 0.1
                            if (vspeed > 0.4)
                                vspeed = 0.4
                            if (helice_cont == 9)
                                helice_temp = 1
                            else
                                helice_cont += 0.5
                        }
                        else
                        {
                            gravity = 0.1
                            if (vspeed > 0.6)
                                vspeed = 0.6
                            if (helice_cont == 0)
                                helice_temp = 0
                            else
                                helice_cont -= 0.5
                        }
                        break
                    case 3:
                        gravity = 0.05
                        if (vspeed > 0.4)
                            vspeed = 0.4
                        break
                    case 4:
                        gravity = 0.6
                        if (vspeed > 4)
                            vspeed = 4
                        break
                }

            }
            else if (vspeed > 2)
                vspeed = 2
        }
        else if (vspeed > -1 || jumpnow != 1)
        {
            if (helice_fly > 1 && helice_fly < 5)
            {
                switch helice_fly
                {
                    case 2:
                        if (helice_temp == 0)
                        {
                            gravity = 0.1
                            if (vspeed > 0.8)
                                vspeed = 0.8
                            if (helice_cont == 9)
                                helice_temp = 1
                            else
                                helice_cont += 0.5
                        }
                        else
                        {
                            gravity = 0.1
                            if (vspeed > 1.2)
                                vspeed = 1.2
                            if (helice_cont == 0)
                                helice_temp = 0
                            else
                                helice_cont -= 0.5
                        }
                        break
                    case 3:
                        gravity = 0.05
                        if (vspeed > 0.8)
                            vspeed = 0.8
                        break
                    case 4:
                        gravity = 0.6
                        if (vspeed > 6)
                            vspeed = 6
                        break
                }

            }
            else if (airspin == 1 && vspeed > 0)
            {
                gravity = 0.05
                if (vspeed > 0.5)
                    vspeed = 0.5
            }
            else if (groundpount == 2)
                gravity = 0.6
            else
                gravity = 0.3
            if (jumpnow == 1)
                jumpnow = 2
        }
        else if (airspin == 1 && vspeed > 0)
        {
            gravity = 0.05
            if (vspeed > 0.5)
                vspeed = 0.5
        }
        else if (groundpount == 2)
            gravity = 0.2
        else
            gravity = 0.1
        if (global.powerup == -43)
        {
            if (doublejump > 0 || (keyboard_check(global.saltar) && vspeed > 0 && (holding == 0 || holding == 2) && stompstyle == 0 && airspin == 0 && isduck == 0 && groundpount == 0 && walljump == 0))
            {
                gravity /= 2
                if (vspeed > 0.8)
                    vspeed = 0.8
                triple_jump = 0
                triple_count = 0
            }
        }
    }
}
if (global.powerup == -43 && keyboard_check_pressed(global.saltar_spin) && (!instance_exists(obj_kuribo_drybones)) && disablecontrols == 0 && groundpount == 0 && doublejump == 0 && holding == 0 && inclown == 0 && stompstyle == 0 && airspin == 0 && walljump == 0 && holding != 3 && isduck == 0 && disable_doublejump == 0)
{
    doublejump = 1
    audio_play_sound(snd_NSMBU_squirrel_imp, 0, false)
    with (instance_create(x, (y + 32), obj_smoke))
    {
        sprite_index = spr_smoke_doublejump
        direct = other.direct
        image_speed = 0.5
    }
    squirrel_fly = 1
    vspeed = 0
    hspeed = (1 * direct)
    image_index = 0
}
if (squirrel_fly > 0)
{
    if (squirrel_fly > 8)
        squirrel_fly = 0
    else
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
        {
            if (squirrel_fly > 3 && vspeed < 0)
                vspeed += 0.15
            else if (vspeed < -2.4)
                vspeed = -2.4
            else
                vspeed -= 1
        }
        else if (squirrel_fly > 4 && vspeed < 0)
            vspeed += 0.05
        else if (vspeed < -3)
            vspeed = -3
        else
            vspeed -= 1
        squirrel_fly += 1
        jumpnow = 1
    }
}
var climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
if (climb1 && (((y + 19) > climb1.y && climb1.object_index == obj_vine_green && climb1.image_index == 0) || climb1.object_index != obj_vine_green || climb1.image_index != 0) && global.yoshi == 0 && isduck == 0 && (keyboard_check(global.arriba) || (keyboard_check(global.abajo) && state == 2)) && holding == 0 && disablecontrols == 0)
{
    audio_stop_sound(snd_NSMBU_get_vine)
    audio_play_sound(snd_NSMBU_get_vine, 0, false)
    state = 3
    gravity = 0
    speed = 0
    event_user(15)
    event_user(14)
    fly_cap = 0
    walljump = 0
    airspin = 0
    groundpount = 0
    triple_jump = 0
    triple_count = 0
}
if (stompstyle == 1)
{
    if (state != 2)
        stompstyle = 0
}


