if (inmario == 1)
{
    if (global.powerup == -82 || instance_exists(obj_frozenmario))
    {
        inmario = 2
        hspeed = 0
        alarm[1] = 40
        with (obj_mario)
            inclown = 0
    }
    depth = -12
    if (sprite_index != s_clown_damage && sprite_index != s_clown_evil && sprite_index != s_clown_eyes && sprite_index != s_clown_link)
        sprite_index = s_clown
    if (x < (camera_get_view_x(view_get_camera(0)) + 16))
    {
        x = (camera_get_view_x(view_get_camera(0)) + 16)
        if (hspeed < 0)
            hspeed = 0
    }
    else if (x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0)) - 16)))
    {
        x = ((camera_get_view_x(view_get_camera(0)) +camera_get_view_width(view_get_camera(0)) - 16))
        if (hspeed > 0)
            hspeed = 0
    }
    if instance_exists(obj_mario)
    {
        with (obj_mario)
        {
            vspeed = 0
            hspeed = 0
            gravity = 0
            state = 0
            jumpnow = 0
            isup = 0
            isuphold = 0
        }
        obj_mario.x = x
        obj_mario.y = (y - 38)
        obj_mario.direct = direct
        if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && enablecontrol == 1 && (!(collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bumper, 0, 0))))
        {
            hspeed -= 0.05
            if (hspeed < -1)
                hspeed = -1
            gravity = 0
            direct = -1
        }
        else if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && enablecontrol == 1 && (!(collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bumper, 0, 0))))
        {
            hspeed += 0.05
            if (hspeed > 1)
                hspeed = 1
            gravity = 0
            direct = 1
        }
        else if (sprite_index != s_clown_damage)
        {
            if (hspeed > 0)
                hspeed -= 0.05
            else if (hspeed < 0)
                hspeed += 0.05
            if (abs(hspeed) < 0.05)
                hspeed = 0
        }
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)) && enablecontrol == 1)
        {
            vspeed -= 0.05
            if (vspeed < -1)
                vspeed = -1
        }
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)) && enablecontrol == 1 && gravity != 0 && vspeed != 0)
        {
            vspeed += 0.05
            if (vspeed > 1)
                vspeed = 1
        }
        if (keyboard_check_pressed(global.saltar) || (keyboard_check_pressed(global.saltar_spin) && global.apariencia != 2))
        {
            inmario = 2
            hspeed = 0
            alarm[1] = 40
            with (obj_mario)
            {
                if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 16) > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
                    vspeed = -2
                else
                    vspeed = -3.75
                audio_stop_sound(scr_jump())
                audio_play_sound(scr_jump(), 0, false)
                jumpnow = 1
                state = 2
                inclown = 0
                gp_limit = 8
            }
        }
        else if (keyboard_check_pressed(global.saltar_spin) && (global.apariencia == 2 || global.apariencia == 3))
        {
            inmario = 2
            hspeed = 0
            alarm[1] = 40
            with (obj_mario)
            {
                if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 16) > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
                    vspeed = -2
                else
                    vspeed = -3
                audio_stop_sound(scr_snd_spinjump())
                audio_play_sound(scr_snd_spinjump(), 0, false)
                jumpnow = 1
                state = 2
                isduck = 0
                isduckhold = 0
                y--
                stompstyle = 1
                inclown = 0
            }
        }
        if (global.powerup == -85 && (!instance_exists(obj_link_bomb)) && object_index != obj_clown_fire && keyboard_check(global.lanzar_agarrar))
        {
            if keyboard_check_pressed(global.abajo)
            {
                audio_play_sound(snd_SMB_link_throw, 0, false)
                sprite_index = s_clown_link
                alarm[4] = 30
                alarm[0] = 30
                with (instance_create(x, (y + 16), obj_link_bomb))
                {
                    held = 0
                    bouncy = 1
                    if (collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 8), bbox_right, bbox_bottom, obj_physicssolid, 0, 0))
                        y -= 16
                }
            }
        }
    }
    else
    {
        inmario = 0
        inenemy = 0
        enemyobject = obj_lighting
        enablecontrol = 1
    }
    if (instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1)
    {
        if (y < (camera_get_view_y(view_get_camera(0)) + 22))
            y = (camera_get_view_y(view_get_camera(0)) + 22)
    }
}
else if (inenemy == 1)
{
    if instance_exists(obj_mario)
    {
        if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_mario, 0, 0) && obj_mario.state == 2 && obj_mario.vspeed < 0)
        {
            audio_stop_sound(snd_stomp)
            audio_play_sound(snd_stomp, 0, false)
            vspeed = -2
        }
    }
    if (sprite_index != s_clown_damage)
        sprite_index = s_clown_evil
    depth = -4
    if instance_exists(enemyobject)
    {
        with (enemyobject)
        {
            vspeed = 0
            hspeed = 0
            gravity = 0
            depth = (other.depth + 1)
        }
        enemyobject.x = x
        if (enemyobject.object_index != obj_jumppiranha && enemyobject.object_index != obj_thwomp && enemyobject.object_index != obj_mushroom && enemyobject.object_index != obj_fireflower && enemyobject.object_index != obj_blooper && enemyobject.object_index != obj_cap && enemyobject.object_index != obj_star)
            enemyobject.direct = direct
        if (enemyobject.object_index == obj_brohammer || enemyobject.object_index == obj_sledgebro)
            enemyobject.y = (y - 19)
        else if (enemyobject.object_index == obj_koopa || enemyobject.object_index == obj_koopa_red)
            enemyobject.y = (y - 23)
        else if (enemyobject.object_index == obj_shell_held || enemyobject.object_index == obj_shell)
        {
            enemyobject.image_speed = 0
            enemyobject.image_index = 0
            enemyobject.y = (y - 23)
            enemyobject.x = (x - 8)
        }
        else if (enemyobject.object_index == obj_pswitch)
        {
            enemyobject.image_speed = 0
            enemyobject.image_index = 0
            enemyobject.y = (y - 26)
            enemyobject.x = (x - 8)
        }
        else if (enemyobject.object_index == obj_mushroom || enemyobject.object_index == obj_blooper || enemyobject.object_index == obj_fireflower || enemyobject.object_index == obj_cap || enemyobject.object_index == obj_star)
        {
            enemyobject.y = (y - 23)
            enemyobject.x = (x - 8)
        }
        else if (enemyobject.object_index == obj_boo)
            enemyobject.y = (y - 15)
        else if (enemyobject.object_index == obj_thwomp || enemyobject.object_index == obj_boomboom)
            enemyobject.y = (y - 16)
        else
            enemyobject.y = (y - 23)
        if instance_exists(obj_mario)
        {
            if (obj_mario.x > (x + 8) && enablecontrol == 1)
            {
                hspeed = 0.7
                direct = 1
            }
            else if (obj_mario.x < (x - 8) && enablecontrol == 1)
            {
                hspeed = -0.7
                direct = -1
            }
            if (obj_mario.y > (y - 8) && enablecontrol == 1)
                vspeed = 0.7
            else if (obj_mario.y < y && enablecontrol == 1)
                vspeed = -0.7
        }
    }
    else
    {
        hspeed = 0
        inenemy = 2
        enemyobject = obj_lighting
        alarm[3] = 60
    }
}
else
{
    if (object_index == obj_clown_fire)
    {
        carga = 0
        audio_charge = 0
        audio_stop_sound(scr_snd_clown_fire_charge())
        audio_stop_sound(snd_NSMBU_clown_charge_end)
    }
    audio_stop_sound(snd_NSMBU_clown_fly)
    depth = 0
    if (sprite_index != s_clown_damage)
    {
        if (sprite_index != s_clown_eyes)
            sprite_index = s_clown
        if (hspeed > 0)
            hspeed -= 0.05
        if (hspeed < 0)
            hspeed += 0.05
        if (abs(hspeed) < 0.05)
            hspeed = 0
    }
}
event_inherited()

