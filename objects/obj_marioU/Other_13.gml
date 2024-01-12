if (gravity == 0 && collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0))
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
}
else
{
    statedelay++
    if (statedelay > 4)
        state = 2
    gravity = 0.03
}
flip = 0
helice_fly = 0
if audio_is_playing(snd_NSMBU_helice_planear)
    audio_stop_sound(snd_NSMBU_helice_planear)
if (global.powerup == -38)
{
    gravity = 0
    if (hspeedmax > 1)
        hspeedmax -= 0.005
    else
        hspeedmax = 1
    if (keyboard_check_pressed(global.saltar) && disablecontrols == 0)
    {
        switch swimtype
        {
            case 0:
                hspeed = (3 * direct)
                break
            case 1:
                vspeed = -3
                hspeed = 0
                break
            case 2:
                vspeed = 3
                hspeed = 0
                break
        }

        if (sprite_index != spr_NSMBU_mario_penguin_swim || (sprite_index == spr_NSMBU_mario_penguin_swim && image_index > (image_number - 4)))
            image_index = 0
        sprite_index = spr_NSMBU_mario_penguin_swim
        image_speed = 0.5
        audio_stop_sound(scr_swim())
        audio_play_sound(scr_swim(), 0, false)
        state = 2
        isduck = 0
        isduckhold = 0
        new_swim = 0
        hspeedmax = 2
    }
    if (keyboard_check(global.izquierda) && isduck == 0 && (!keyboard_check(global.derecha)))
    {
        hspeed += -0.2
        direct = -1
        swimtype = 0
    }
    else if (keyboard_check(global.derecha) && isduck == 0 && (!keyboard_check(global.izquierda)))
    {
        hspeed += 0.2
        direct = 1
        swimtype = 0
    }
    else
    {
        if (hspeed > 0)
            hspeed -= 0.04
        else if (hspeed < 0)
            hspeed += 0.04
        if (abs(hspeed) < 0.04)
            hspeed = 0
    }
    if keyboard_check(global.arriba)
    {
        vspeed += -0.2
        swimtype = 1
    }
    else if keyboard_check(global.abajo)
    {
        swimtype = 2
        if collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
            vspeed = 0
        else
            vspeed += 0.2
    }
    else
    {
        if (vspeed > 0)
            vspeed -= 0.04
        else if (vspeed < 0)
            vspeed += 0.04
        if (abs(vspeed) < 0.04)
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
        if (new_swim == 1)
        {
            if (vspeed > 0.5)
                vspeed = 0.5
        }
        else if (vspeed > 1)
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
            if (sprite_index != scr_NSMBU_swim() || (sprite_index == scr_NSMBU_swim() && image_index > (image_number - 4)))
                image_index = 0
            sprite_index = scr_NSMBU_swim()
            image_speed = 0.9
            audio_stop_sound(scr_swim())
            audio_play_sound(scr_swim(), 0, false)
            state = 2
            isduck = 0
            isduckhold = 0
            new_swim = 0
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
            vspeed = 1
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
    if (noisy == 1)
    {
        noisy = 0
        audio_stop_sound(scr_swim())
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
    walljump = 0
    airspin = 0
    groundpount = 0
    triple_jump = 0
    triple_count = 0
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


