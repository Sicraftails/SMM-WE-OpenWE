/// @description Mario's swimming step event
col_enemigos = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
if ((global.powerup == -80) && (scr_canpull() && ((!instance_exists(obj_puller)) && (holding == 0))))
{
    enemigo = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_enemyparent, 0, 0)
    hold = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_holdparent, 0, 0)
    nube = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)
    if nube
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_nube = instance_create(x, y, obj_puller)
        c_nube.cloud = 1
        c_nube.obj = nube.id
    }
    else if (enemigo && ((enemigo.hardness < 99) || (enemigo.object_index == obj_banzaibill)))
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.enemy = 1
        c_enemy.obj = enemigo.id
    }
    else if (hold && ((hold.object_index != obj_pswitch) && (hold.object_index != obj_spring)))
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        c_enemy = instance_create(x, y, obj_puller)
        c_enemy.held = 1
        c_enemy.obj = hold.id
    }
    else if (global.bg_level == "snow")
    {
        audio_play_sound(snd_SMB2_get, 0, false)
        with (instance_create(x, y, obj_puller))
            snowball = 1
    }
}
if (gravity == 0 && collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1.5,obj_slopeparent,1,0)) ||  ((col_enemigos && ((global.powerup == -80) && ((col_enemigos.stomp != 1) && ((col_enemigos.stomp != 2) && (col_enemigos.stomp != 5)))))))
{
    if (vspeed >= 0 && (!instance_exists(obj_mario_transform2)))
    {
        statedelay = 0
        if (hspeed == 0)
            state = 0
        else
            state = 1
        if (global.yoshi == 0 && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_modelsizable, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_modelsolid, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom + 1), (bbox_right - 3), (bbox_bottom + 1), obj_rockparent, 0, 0))) && (collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0)))
            event_user(0)
    }
	else if (vspeed < 0)
        state = 2
    if (groundpount == 1)
        groundpount = 0
    if (down_atack == 0 && disablecontrols == 2)
        disablecontrols = 0
}
else
{
    statedelay++
    if (statedelay > 4)
        state = 2
    gravity = 0.03
}
if (global.powerup == -29)
{
    gravity = 0
    if (keyboard_check(global.lanzar_agarrar) || global.key_br == 1)
        hspeedmax = 2
    else
        hspeedmax = 1
    if (keyboard_check(global.izquierda) && isduck == 0 && (!keyboard_check(global.derecha)))
    {
        hspeed += -0.2
        direct = -1
        swimtype = 0
        if (image_index > 1 && image_index < 1.5)
        {
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
        }
    }
    else if (keyboard_check(global.derecha) && isduck == 0 && (!keyboard_check(global.izquierda)))
    {
        hspeed += 0.2
        direct = 1
        swimtype = 0
        if (image_index > 1 && image_index < 1.5)
        {
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
        }
    }
    else
    {
        hspeed = (max(0, (abs(hspeed) - 0.2)) * sign(hspeed))
        if (hspeed < 0.2 && hspeed > -0.2)
            hspeed = 0
    }
    if keyboard_check(global.arriba)
    {
        vspeed += -0.2
        if (hspeed == 0)
            swimtype = 1
        if (image_index > 1 && image_index < 1.5)
        {
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
        }
    }
    else if keyboard_check(global.abajo)
    {
        if (hspeed == 0)
            swimtype = 2
		if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))
            vspeed = 0
        else
            vspeed += 0.2
        if (image_index > 1 && image_index < 1.5)
        {
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
        }
    }
    else
    {
        vspeed = (max(0, (abs(vspeed) - 0.2)) * sign(vspeed))
        if (vspeed < 0.2 && vspeed > -0.2)
            vspeed = 0
    }
    if (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && global.yoshi > 0)
    {
        vspeed = -2
        audio_play_sound(scr_swim(), 0, false)
        state = 2
        isduck = 0
        global.yoshi = 0
        holding = 0
        if instance_exists(obj_kuriboshoe)
        {
            with (obj_kuriboshoe)
                event_user(0)
        }
    }
    if (hspeed > hspeedmax)
        hspeed = hspeedmax
    if (hspeed < (-hspeedmax))
        hspeed = (-hspeedmax)
    if (vspeed > hspeedmax)
        vspeed = hspeedmax
    if (vspeed < (-hspeedmax))
        vspeed = (-hspeedmax)
}
else
{
    if (holding == 0 || holding == 3)
    {
        if (vspeed > 1)
            vspeed = 1
        if (vspeed < -1.5)
            vspeed = -1.5
        if (keyboard_check_pressed(global.saltar) && disablecontrols == 0)
        {
            if (state < 2)
                vspeed = -1
            else if (vspeed > 0)
                vspeed = (-((vspeed + 0.18)))
            else
                vspeed -= 0.6
            if (global.powerup == -85 && arrow > 0)
            {
                if (sprite_index != scr_link_arrow_swim(arrow))
                    image_index = 0
                sprite_index = scr_link_arrow_swim(arrow)
            }
            else
            {
                if (sprite_index != scr_marioswim())
                    image_index = 0
                sprite_index = scr_marioswim()
            }
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
            state = 2
            isduck = 0
            isduckhold = 0
        }
        if (keyboard_check_released(global.saltar) && new_swim == 1)
        {
            new_swim = 0
            sprite_index = scr_NSMBU_swim()
            image_index = 8
        }
        if (keyboard_check_pressed(global.saltar_spin) && disablecontrols == 0 && holding == 3 && global.yoshi > 0)
        {
            vspeed = -1
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
            state = 2
            isduck = 0
            isduckhold = 0
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
        if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0 && (isduck == 0 || state == 2))
        {
            hspeed += 0.05
            direct = 1
        }
        else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0 && (isduck == 0 || state == 2))
        {
            hspeed -= 0.05
            direct = -1
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
        if (global.powerup == -85)
        {
            if keyboard_check(global.lanzar_agarrar)
            {
                if (keyboard_check_pressed(global.arriba) && (!instance_exists(obj_link_bomb)) && (!(place_meeting(x, y, obj_door))) && (!(place_meeting(x, y, obj_door_exit))) && (!(place_meeting(x, y, obj_door_switch))) && (!(place_meeting(x, y, obj_door_switch_exit))) && (!(place_meeting(x, y, obj_door_lock))) && (!(place_meeting(x, y, obj_door_lock_exit))) && disablecontrols == 0 && isduck == 0 && holding == 0 && state < 3 && global.yoshi == 0 && inclown != 1 && down_atack == 0 && dash_atack == 0 && arrow == 0)
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
            if (arrow > 0 && (keyboard_check_released(global.saltar_spin) || state == 4 || global.powerup != -85))
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
        }
    }
    else
    {
        vspeed -= 0.5
        if (vspeed < -1)
            vspeed = -1
        if (vspeed > 1)
            vspeed = 1
        if (keyboard_check_pressed(global.abajo) && disablecontrols == 0)
        {
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
        }
        if (keyboard_check(global.abajo) && disablecontrols == 0)
        {
            if (vspeed < 0)
                vspeed = ((-vspeed) + 0.18)
            else
                vspeed += 0.6
        }
        if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && disablecontrols == 0 && (isduck == 0 || state == 2))
        {
            hspeed += 0.05
            direct = 1
        }
        else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && disablecontrols == 0 && (isduck == 0 || state == 2))
        {
            hspeed -= 0.05
            direct = -1
        }
        else if (direct == 1)
        {
            hspeed += 0.05
            if (hspeed > 0.5)
                hspeed = 0.5
        }
        else
        {
            hspeed -= 0.05
            if (hspeed < -0.5)
                hspeed = -0.5
        }
    }
    if (state == 2)
    {
        if (hspeed > 1)
            hspeed = 1
        if (hspeed < -1)
            hspeed = -1
    }
    else
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        if (hspeed < -0.5)
            hspeed = -0.5
    }
}
if (noisy == 1)
{
    noisy = 0
    audio_stop_sound(scr_swim())
}
if (global.apariencia == 0)
{
    var climb1 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_climb, 0, 0)
    if (climb1 && (((y + 19) > climb1.y && climb1.object_index == obj_vine_green && climb1.image_index == 0) || climb1.object_index != obj_vine_green || climb1.image_index != 0) && global.yoshi == 0 && isduck == 0 && dash_atack == 0 && down_atack == 0 && arrow == 0 && holding == 0 && (keyboard_check(global.arriba) || (keyboard_check(global.abajo) && state == 2)) && disablecontrols == 0)
    {
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
        state = 3
        gravity = 0
        speed = 0
    }
}
if (instance_exists(obj_lava_water) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach") && (y + 16) <= (obj_lava_water.y - 4))
{
    isswim = 0
    if place_meeting(x, (y + 16), obj_lava_water)
    {
        if (global.apariencia != 0 && vspeed > 0)
            instance_create(x, (obj_lava_water.y - 26), obj_splash_agua)
        if keyboard_check(global.saltar)
        {
            vspeed = -4.125
            jumpnow = 1
            if (global.apariencia != 0)
                instance_create(x, (obj_lava_water.y - 26), obj_splash_agua)
        }
    }
    if (noisy == 1)
    {
        noisy = 0
        audio_stop_sound(scr_swim())
    }
}
if (global.yoshi != 2)
    stompstyle = 0


