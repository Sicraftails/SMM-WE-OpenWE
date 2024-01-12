if (inmario == 1)
{
 if (global.powerup == -82 || instance_exists(obj_frozenmario))
    {
        inmario = 2
        hspeed = 0
        alarm[2] = 40
        with (obj_mario)
            inclown = 0
    }
    depth = -11
    if (x < (camera_get_view_x(view_get_camera(0)) + 16))
    {
        x = (camera_get_view_x(view_get_camera(0)) + 16)
        if (hspeed < 0)
            hspeed = 0
    }
    else if (x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 16))
    {
        x = ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 16)
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
        obj_mario.y = (y - 24)
        obj_mario.direct = direct
        if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)))
        {
            hspeed -= 0.1
            if (hspeed < -1.5)
                hspeed = -1.5
            gravity = 0
            direct = -1
        }
        else if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)))
        {
            hspeed += 0.1
            if (hspeed > 1.5)
                hspeed = 1.5
            gravity = 0
            direct = 1
        }
        else
        {
            if (hspeed > 0)
                hspeed -= 0.1
            else if (hspeed < 0)
                hspeed += 0.1
            if (abs(hspeed) < 0.1)
                hspeed = 0
        }
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)))
        {
            vspeed -= 0.1
            if (vspeed < -1.5)
                vspeed = -1.5
        }
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)))
        {
            vspeed += 0.1
            if (vspeed > 1.5)
                vspeed = 1.5
        }
        else
        {
            if (vspeed > 0)
                vspeed -= 0.1
            else if (vspeed < 0)
                vspeed += 0.1
            if (abs(vspeed) < 0.1)
                vspeed = 0
        }
        if (keyboard_check_pressed(global.saltar) || (keyboard_check_pressed(global.saltar_spin) && global.apariencia < 2))
        {
            inmario = 2
            hspeed = 0
            ystart = y
            alarm[2] = 10
            with (obj_mario)
            {
                if (isswim == 1)
                    vspeed = -2
                else
                    vspeed = -3.75
                audio_play_sound(scr_jump(), 0, false)
                jumpnow = 1
                state = 2
                inclown = 0
            }
        }
        else if (keyboard_check_pressed(global.saltar_spin) && global.apariencia > 1)
        {
            inmario = 2
            hspeed = 0
            ystart = y
            alarm[2] = 10
            with (obj_mario)
            {
                if (isswim == 1)
                    vspeed = -2
                else
                    vspeed = -3
                audio_play_sound(snd_spin, 0, false)
                jumpnow = 1
                state = 2
                isduck = 0
                isduckhold = 0
                y--
                stompstyle = 1
                inclown = 0
            }
        }
        event_user(3)
        event_user(4)
    }
    else
    {
        inmario = 0
        ystart = y
    }
}
else
{
    hspeed = 0
    if (vspeed > 0)
        vspeed -= 0.1
    else if (hspeed < 0)
        vspeed += 0.1
    if (abs(vspeed) < 0.1)
        vspeed = 0
    y = (ystart + (sin((timer * 0.04375)) * 2))
    timer++
}

