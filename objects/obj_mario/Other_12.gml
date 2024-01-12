/// @description Mario's default step event
col_enemigos = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
if (gravity == 0 && (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom - 1), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1.5,obj_slopeparent,1,0)) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_lava_water_drybones, 0, 0) && (instance_exists(obj_kuribo_drybones) || (global.powerup == -29 && obj_mario.pmeter > 5 && obj_mario.holding == 2)) || ((col_enemigos && ((global.powerup == -80) && ((col_enemigos.stomp != 1) && ((col_enemigos.stomp != 2) && (col_enemigos.stomp != 5)))))))))
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
}
else
{
    statedelay++
    if (statedelay > 4)
        state = 2
}
if (down_atack == 0 && disablecontrols == 2)
    disablecontrols = 0
if (down_atack == 1)
{
    vspeed = 0
    gravity = 0
}
else if (down_atack == 2)
{
    if (vspeed > 6)
        vspeed = 6
}
else if (vspeed > 4)
    vspeed = 4
if (global.powerup == -80 && state == 0)
{
    if keyboard_check(global.abajo)
    {
        if (jump_loaded < 60)
            jump_loaded++
        else
            jump_loaded = 60
    }
    else
        jump_loaded = 0
}
else
    jump_loaded = 0
if ((global.powerup == -80) && (scr_canpull() && ((!instance_exists(obj_puller)) && (holding == 0))))
{
    enemigo = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
    hold = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_holdparent, 0, 0)
    nube = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)
    suelo_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_modelsolid, 0, 0)
    start_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground2, 0, 0)
    goal_nieve = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground3, 0, 0)
    if nube
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_nube = instance_create(x, y, obj_puller)
        c_nube.cloud = 1
        c_nube.obj = nube.id
    }
    else if (enemigo && ((enemigo.hardness < 99) || (enemigo.object_index == obj_banzaibill)))
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.enemy = 1
        c_enemy.obj = enemigo.id
    }
    else if (hold && ((hold.object_index != obj_pswitch) && (hold.object_index != obj_spring)))
    {
        speed = 0
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.held = 1
        c_enemy.obj = hold.id
    }
    else if (global.bg_level == "snow")
    {
        if (suelo_nieve || (start_nieve || goal_nieve))
        {
            speed = 0
            audio_play_sound(snd_SMB2_get, 0, false)
            with (instance_create(x, y, obj_puller))
                snowball = 1
        }
    }
}
if (keyboard_check(global.lanzar_agarrar) || global.key_br == 1)
{
    if ((global.powerup == -29 && holding == 0) || arrow > 0)
        hspeedmax = (1.3 + abs((1 * instance_number(obj_invincibility))))
    else
        hspeedmax = (3 + abs((1 * instance_number(obj_invincibility))))
}
else if ((global.powerup == -29 && holding == 0) || arrow > 0)
    hspeedmax = (1 + abs((1 * instance_number(obj_invincibility))))
else
    hspeedmax = (1.3 + abs((1 * instance_number(obj_invincibility))))
if (keyboard_check_pressed(global.saltar) && disablecontrols == 0 && jumpnow == 0 && state < 2 && (sprite_index != spr_SMB_link_shield || global.yoshi > 0))
{
    if (abs(hspeed) > 2.8)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
        {
            if (global.powerup == -78)
                vspeed = -3.8
            else
                vspeed = -3.3
        }
        else if (global.powerup == -78)
            vspeed = -4.8
        else
            vspeed = -4.3
    }
    else if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (global.powerup == -78)
        {
            if (round((hspeed / 2)) == 0)
                vspeed = -3.45
            else
                vspeed = -3.55
        }
        else if (jump_loaded == 60)
            vspeed = -3.6
        else if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (global.powerup == -78)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -4.45
        else
            vspeed = -4.55
    }
    else if (jump_loaded == 60)
        vspeed = -4.5
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    jumpnow = 1
    s_hen = 1
    state = 2
}
if ((keyboard_check_pressed(global.saltar_spin) && global.apariencia == 2 && disablecontrols == 0 && holding == 0 && isduck == 0 && jumpnow == 0 && state < 2) || (keyboard_check_pressed(global.saltar_spin) && (global.apariencia == 2 || global.apariencia == 3) && disablecontrols == 0 && holding == 3 && isduck == 0 && global.yoshi > 0 && vspeed == 0 && jumpnow == 0 && state < 2))
{
    image_index = 0
    if (abs(hspeed) > 2.8)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -2.3
        else
            vspeed = -3.3
    }
    else if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -2.3
        else
            vspeed = -2.3
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.3
    else
        vspeed = -3.3
    jumpnow = 1
    s_hen = 1
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
else if ((keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 2 && jumpnow == 0 && state < 2) || (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && global.yoshi > 0 && vspeed != 0 && global.apariencia == 2 && state == 2) || (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && global.yoshi > 0 && global.apariencia != 2) || (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && jumpnow == 0 && state < 2 && global.apariencia != 2 && global.powerup != -85))
{
    if (abs(hspeed) > 2.8)
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
        {
            if (global.powerup == -78)
                vspeed = -3.8
            else
                vspeed = -3.3
        }
        else if (global.powerup == -78)
            vspeed = -4.8
        else
            vspeed = -4.3
    }
    else if (global.bg_level == "sky" && global.modo_noche == 1)
    {
        if (global.powerup == -78)
        {
            if (round((hspeed / 2)) == 0)
                vspeed = -3.45
            else
                vspeed = -3.55
        }
        else if (round((hspeed / 2)) == 0)
            vspeed = -2.85
        else
            vspeed = -2.95
    }
    else if (global.powerup == -78)
    {
        if (round((hspeed / 2)) == 0)
            vspeed = -4.45
        else
            vspeed = -4.55
    }
    else if (round((hspeed / 2)) == 0)
        vspeed = -3.95
    else
        vspeed = -4.05
    audio_play_sound(scr_jump(), 0, false)
    jumpnow = 1
    s_hen = 1
    state = 2
    if (global.yoshi > 0)
    {
        global.yoshi = 0
        holding = 0
        if instance_exists(obj_yoshi2)
        {
            with (obj_yoshi2)
                event_user(1)
        }
        if instance_exists(obj_kuriboshoe)
        {
            stompstyle = 0
            with (obj_kuriboshoe)
                event_user(0)
        }
    }
}
if ((keyboard_check_released(global.saltar) && jumpnow == 1) || (keyboard_check_released(global.saltar_spin) && jumpnow == 1))
    jumpnow = 2
if (isduck == 1 && state != 2)
{
    if (snow == 1)
    {
        if (hspeed > 0)
            hspeed -= 0.01
        if (hspeed < 0)
            hspeed += 0.01
        if (abs(hspeed) < 0.01)
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
    if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0 && modo_vuelo == 0 && dash_atack == 0)
    {
        if (holding == 2 && direct != 1 && stompstyle == 0 && global.apariencia == 2)
        {
            turning = 1
            alarm[11] = 7
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
                    hspeed += 0.07
                hspeed += 0.06
            }
        }
        if (modo_vuelo == 0 && arrow == 0 && (global.apariencia != 0 || inclown == 2 || (global.apariencia == 0 && state != 2) || (global.powerup == -80)))
            direct = 1
        direct_turn = 1
    }
    else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0 && modo_vuelo == 0 && dash_atack == 0)
    {
        if (holding == 2 && direct != -1 && stompstyle == 0 && global.apariencia == 2)
        {
            turning = 1
            alarm[11] = 7
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
                    hspeed += -0.07
                hspeed += -0.06
            }
        }
        if (modo_vuelo == 0 && arrow == 0 && direct_turn != 1 && (global.apariencia != 0 || inclown == 2 || (global.apariencia == 0 && state != 2) || (global.powerup == -80)))
            direct = -1
        direct_turn = -1
    }
    else if (state != 2)
    {
        if (snow == 1)
        {
            if (hspeed > 0)
                hspeed -= 0.005
            if (hspeed < 0)
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
    if (global.modo_noche == 1 && global.bg_level == "sky")
    {
        if (global.powerup == -39)
        {
            if (ygrav == 1)
                gravity = 0.04
            else if (pmeter > 5)
                gravity = 0
            else
                gravity = 0.02
        }
        else
            gravity = 0.05
        if (down_atack == 2)
        {
            if (vspeed > 4)
                vspeed = 4
        }
        else if (vspeed > 2)
            vspeed = 2
    }
    else if (vspeed > -1 || jumpnow != 1)
    {
        if (global.powerup == -39)
        {
            if (ygrav == 1)
                gravity = 0.2
            else if (pmeter > 5)
                gravity = 0
            else
                gravity = 0.15
        }
        else if (down_atack == 2)
            gravity = 0.6
        else
            gravity = 0.3
        if (jumpnow == 1)
            jumpnow = 2
    }
    else if (ygrav == 1)
        gravity = 0.1
    else if (down_atack == 2)
        gravity = 0.2
    else
        gravity = 0.1
    if (global.powerup == 3)
    {
        if ((keyboard_check(global.saltar) && sprite_index != spr_mario_cap_fly_decender && sprite_index != spr_luigi_cap_fly_decender && sprite_index != spr_toad_cap_fly_decender && sprite_index != spr_toadette_cap_fly_decender && vspeed > 0) || (keyboard_check(global.saltar_spin) && sprite_index != spr_mario_cap_fly_decender && sprite_index != spr_luigi_cap_fly_decender && sprite_index != spr_toad_cap_fly_decender && sprite_index != spr_toadette_cap_fly_decender && place_free(x, (y + 1)) && vspeed > 0))
        {
            gravity /= 2
            if (vspeed > 1)
                vspeed = 1
        }
    }
}
if (global.apariencia == 0)
{
    var climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
    if (climb1 && (((y + 19) > climb1.y && climb1.object_index == obj_vine_green && climb1.image_index == 0) || climb1.object_index != obj_vine_green || climb1.image_index != 0) && isduck == 0 && dash_atack == 0 && down_atack == 0 && arrow == 0 && holding == 0 && global.yoshi == 0 && (keyboard_check(global.arriba) || (keyboard_check(global.abajo) && state == 2)) && disablecontrols == 0)
    {
        event_user(15)
        if (hspeed > 0)
            direct = 1
        else if (hspeed < 0)
            direct = -1
        x = (climb1.x + 8)
        state = 3
        speed = 0
        gravity = 0
        canhang = 1
        alarm[6] = 8
    }
}
else
{
    climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
    if (climb1 && (((y + 19) > climb1.y && climb1.object_index == obj_vine_green && climb1.image_index == 0) || climb1.object_index != obj_vine_green || climb1.image_index != 0) && global.yoshi == 0 && isduck == 0 && (keyboard_check(global.arriba) || (keyboard_check(global.abajo) && state == 2)) && holding == 0 && disablecontrols == 0)
    {
        event_user(15)
        state = 3
        gravity = 0
        speed = 0
        walljump = 0
    }
}
/*
if (keyboard_check_pressed(global.abajo) && disablecontrols == 0 && holding == 0 && global.apariencia != 0)
{
    if ((global.powerup == -37 || global.powerup == -38) && state == 1)
    {
        with (instance_create(x, y, obj_slider))
            event_user(0)
    }
    else if (collision_point(bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0) or collision_point(bbox_left, (bbox_bottom + 1), obj_slopeparent, 1, 0))
        instance_create(x, y, obj_slider)
}*/
if (stompstyle == 1)
{
    if (state != 2)
        stompstyle = 0
}
if (global.powerup == -39)
{
    if (disablegrav > 0)
    {
        if (state != 2)
            disablegrav = 0
        else
        {
            ygrav = 0
            disablegrav--
        }
    }
    else
        ygrav = 1
}
else
    disablegrav = 0
if (global.powerup == -85)
{
    if keyboard_check(global.lanzar_agarrar)
    {
        if (keyboard_check_pressed(global.abajo) && disablecontrols == 0 && holding == 0 && global.yoshi == 0 && inclown == 0 && state == 0 && arrow == 0 && down_atack == 0 && dash_atack == 0)
            dash_atack = 1
    }
    if (dash_atack == 1)
    {
        isduck = 0
        hspeed = 0
        dash_cont++
        if (!instance_exists(obj_link_dash_atack))
        {
            with (instance_create(x, y, obj_link_dash_atack))
            {
                if (other.direct == -1)
                    mask_index = spr_SMB_link_atack_mask
            }
        }
        if (dash_cont == 40)
        {
            audio_play_sound(snd_SMB_link_charge, 0, false)
            if (!instance_exists(obj_effect_link))
            {
                with (instance_create(x, (y + 16), obj_effect_link))
                    arrow = 0
            }
        }
        if (dash_cont > 50)
            dash_atack = 2
    }
    else if (dash_atack == 2)
    {
        isduck = 0
        if (hspeed > 0 && hspeed > hspeedmax)
            hspeed = hspeedmax
        else if (hspeed < 0 && hspeed < (-hspeedmax))
            hspeed = (-hspeedmax)
        else
            hspeed += (0.25 * direct)
    }
    if (keyboard_check_pressed(global.abajo) && disablecontrols == 0 && (!(place_meeting(x, y, obj_bortice))) && isduck == 0 && holding == 0 && global.yoshi == 0 && inclown == 0 && state == 2 && down_atack == 0 && dash_atack == 0 && arrow == 0)
    {
        image_index = 0
        down_atack = 1
        hspeed = 0
        vspeed = 0
        disablecontrols = 2
        audio_play_sound(snd_SMB_link_sword, 0, false)
        if (!instance_exists(obj_link_dash_atack))
            instance_create(x, y, obj_link_down_atack)
    }
    if (keyboard_check_pressed(global.arriba) && disablecontrols == 2 && state == 2 && down_atack != 0)
    {
        down_atack = 0
        down_cont = 0
        disablecontrols = 0
    }
    if (down_atack == 1)
    {
        down_cont++
        if (down_cont > 20)
        {
            down_atack = 2
            down_cont = 0
            vspeed = 1.5
        }
    }
    if keyboard_check(global.lanzar_agarrar)
    {
        if (keyboard_check_pressed(global.arriba) && (!instance_exists(obj_link_bomb)) && (!(place_meeting(x, y, obj_door))) && (!(place_meeting(x, y, obj_door_exit))) && (!(place_meeting(x, y, obj_door_switch))) && (!(place_meeting(x, y, obj_door_switch_exit))) && (!(place_meeting(x, y, obj_door_lock))) && (!(place_meeting(x, y, obj_door_lock_exit))) && disablecontrols == 0 && isduck == 0 && state < 3 && holding == 0 && global.yoshi == 0 && inclown != 1 && down_atack == 0 && dash_atack == 0 && arrow == 0)
        {
            audio_play_sound(snd_SMB_link_pull, 0, false)
            holding = 2
            instance_create(x, (y + 1), obj_link_bomb)
        }
    }
    if (keyboard_check(global.saltar_spin) && instance_number(obj_link_arrow) < 2 && disablecontrols == 0 && isduck == 0 && holding == 0 && global.yoshi == 0 && inclown != 1 && down_atack == 0 && dash_atack == 0 && arrow == 0)
    {
        arrow = 2
        instance_create(x, y, obj_link_arrow_anim)
    }
    if (arrow > 0 && arrow_ready == 1)
    {
        if (keyboard_check_pressed(global.arriba) && (!keyboard_check(global.abajo)))
        {
            if (arrow > 1)
                arrow--
        }
        else if (keyboard_check_pressed(global.abajo) && (!keyboard_check(global.arriba)))
        {
            if (arrow < 3)
                arrow++
        }
    }
}
if (arrow > 0 && (keyboard_check_released(global.saltar_spin) || state > 2 || global.powerup != -85))
{
    if (arrow_ready == 1)
    {
        switch arrow
        {
            case 1:
                var posy = 20
                break
            case 2:
                posy = 23
                break
            case 3:
                posy = 25
                break
        }

        with (instance_create((x + (6 * direct)), (y + posy), obj_link_arrow))
        {
            direct = other.direct
            type = other.arrow
        }
    }
    arrow = 0
    arrow_ready = 0
}
if (dash_atack > 0 && (keyboard_check_released(global.lanzar_agarrar) || state > 2 || global.powerup != -85))
{
    dash_atack = 0
    dash_cont = 0
}
if (global.apariencia == 0 && global.powerup != -85 && holding != 0)
    holding = 0
if (state == 2 && isduck == 0 && disablecontrols == 0)
{
    if (keyboard_check(global.saltar) && (!keyboard_check(global.saltar_spin)) && global.powerup == 3 && pmeter > 5 && stompstyle == 0 && canfly == 0)
    {
        vspeed = -3.5
        fly_cap += 2
        if (fly_cap > 145)
        {
            canfly = 1
            jumpnow = 2
            fly_cap = 0
            with (obj_levelmanager)
            {
                pmeter = 0
                alarm[7] = 15
            }
            if (keyboard_check(global.lanzar_agarrar) && holding == 0)
            {
                modo_vuelo = 1
                vspeed = 0.4
            }
        }
        jumpnow = 1
    }
    if (keyboard_check_released(global.saltar) && global.powerup == 3 && pmeter > 5 && canfly == 0)
    {
        with (obj_levelmanager)
        {
            pmeter = 0
            alarm[7] = 15
        }
        canfly = 1
        jumpnow = 2
        fly_cap = 0
        if (keyboard_check(global.lanzar_agarrar) && holding == 0)
            modo_vuelo = 1
    }
    if (vspeed < 0 && collision_rectangle((bbox_left - 3), bbox_top, (bbox_right + 3), bbox_top, obj_solid, 1, 0) && global.powerup == 3 && pmeter > 5 && canfly == 0 && stompstyle == 0)
    {
        with (obj_levelmanager)
        {
            pmeter = 0
            alarm[7] = 15
        }
        canfly = 1
        jumpnow = 2
        fly_cap = 0
        if (keyboard_check(global.lanzar_agarrar) && holding == 0)
            modo_vuelo = 1
    }
    if (keyboard_check_released(global.lanzar_agarrar) && global.powerup == 3 && modo_vuelo == 1 && canfly == 1)
        modo_vuelo = 0
    if (keyboard_check(global.lanzar_agarrar) && global.powerup == 3 && modo_vuelo == 1 && canfly == 1)
    {
        if ((keyboard_check_pressed(global.izquierda) && direct == 1) || (keyboard_check_pressed(global.derecha) && direct == -1))
        {
            vspeed = 3
            if (sprite_index == spr_mario_cap_fly || sprite_index == spr_luigi_cap_fly || sprite_index == spr_toad_cap_fly || sprite_index == spr_toadette_cap_fly)
            {
                if (image_index > (image_number - 2))
                {
                    image_index = 0
                    image_speed = 0.15
                    sprite_index = scr_mario_cap_fly_acender()
                }
            }
        }
        if ((keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && direct == 1) || (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && direct == -1))
        {
            if (sprite_index == spr_mario_cap_fly || sprite_index == spr_luigi_cap_fly || sprite_index == spr_toad_cap_fly || sprite_index == spr_toadette_cap_fly)
            {
                if (image_index > (image_number - 1))
                {
                    image_index = 0
                    image_speed = 0.18
                    sprite_index = scr_mario_cap_fly_decender()
                }
            }
        }
        if ((keyboard_check_released(global.derecha) && direct == 1) || (keyboard_check_released(global.izquierda) && direct == -1))
        {
            if (sprite_index == spr_mario_cap_fly_decender || sprite_index == spr_luigi_cap_fly_decender || sprite_index == spr_toad_cap_fly_decender || sprite_index == spr_toadette_cap_fly_decender)
            {
                if (image_index == 2)
                {
                    image_index = 0
                    image_speed = 0.2
                    sprite_index = scr_mario_cap_fly_acender_decender()
                    fly_high = 6
                }
                else
                {
                    image_index = 0
                    image_speed = 0.15
                    sprite_index = scr_mario_cap_fly_acender()
                }
            }
        }
    }
    if (keyboard_check(global.saltar_spin) && (!keyboard_check(global.saltar)) && global.powerup == 3 && pmeter > 5 && canfly == 0)
    {
        vspeed = -3.5
        fly_cap += 2
        if (fly_cap > 145)
        {
            canfly = 1
            jumpnow = 2
            fly_cap = 0
        }
        jumpnow = 1
    }
    if (keyboard_check_released(global.saltar_spin) && global.powerup == 3 && pmeter > 5 && canfly == 1)
    {
        jumpnow = 2
        fly_cap = 0
    }
    else if (keyboard_check_released(global.saltar_spin) && global.powerup == 3 && pmeter > 5 && canfly == 0)
    {
        canfly = 1
        jumpnow = 2
        fly_cap = 0
    }
}
if (state == 2 && stompstyle == 0 && disablecontrols == 0 && (global.yoshi == 0 || global.yoshi == 2))
{
    if (global.powerup == -39 && keyboard_check_pressed(global.saltar) && jumpnow != 1 && wiggle < 12 && sprite_index != scr_mariojumpstar())
    {
        if (!audio_is_playing(snd_atack_leaf))
            audio_play_sound(snd_atack_leaf, 0, false)
        wiggle = 16
        disablegrav = 8
        if (pmeter > 5)
            vspeed = -1.5
        else if (vspeed < 0)
            vspeed = max((vspeed + 0.05), 0)
        else
            vspeed = 0
    }
}