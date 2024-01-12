if (collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, (bbox_top + 6), obj_mario, 0, 0) && inmune == 0 && vspeed > 0 && obj_mario.state < 2 && gravity != 0)
{
    obj_mario.x += hspeed
    obj_mario.y = ceil((bbox_top - (31 - vspeed)))
    obj_mario.gravity = 0
    obj_mario.vspeed = 0
    with (obj_mario)
        event_user(15)
}
var col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_icicle, 1, 0)
if (col_estalactita && col_estalactita.vspeed > 0 && held == 0)
{
    event_user(0)
    with (col_estalactita)
        event_user(0)
}
if (held == 0)
{
    var col_mario_left = collision_rectangle((bbox_left - 6), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_mario, 0, 0)
    var col_mario_right = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 6), (bbox_bottom - 4), obj_mario, 0, 0)
    if (instance_exists(obj_mario) && ((col_mario_left && obj_mario.direct == 1) || (col_mario_right && obj_mario.direct == -1)) && scr_canhold() && inmune == 0)
    {
        if (mytop != obj_lighting && instance_exists(mytop))
        {
            with (mytop)
                instance_destroy()
            mytop = obj_lighting
        }
        obj_mario.holding = 2
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
        enable_gravity = 1
        alarm[4] = -1
        alarm[5] = -1
        alarm[6] = -1
    }
    if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        swimming = 1
    else
        swimming = 0
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            var col_shell2 = collision_rectangle((bbox_left - 1), (bbox_top + 2), (bbox_right + 1), (bbox_bottom - 2), obj_shell_held, 0, 0)
            if (col_shell2 && col_shell2.bbox_bottom > (bbox_top + 5))
                event_user(0)
            if (enable_gravity == 1)
            {
                event_user(3)
                event_user(4)
            }
            if (gravity == 0)
            {
                if (swimming == 0)
                {
                    if (abs(hspeed) >= 2)
                    {
                        if (hspeed > 0)
                        {
                            if (hspeed > 3)
                                hspeed = 3
                            else
                                hspeed += 0.1
                        }
                        else if (hspeed < 0)
                        {
                            if (hspeed < -3)
                                hspeed = -3
                            else
                                hspeed -= 0.1
                        }
                    }
                    else
                    {
                        hspeed = (max(0, (abs(hspeed) - 0.145)) * sign(hspeed))
                        if (abs(hspeed) < 0.145)
                            hspeed = 0
                    }
                }
                else if (swimming == 1)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.145)) * sign(hspeed))
                    if (abs(hspeed) < 0.145)
                        hspeed = 0
                }
            }
        }
        else
        {
            gravity /= 2
            if (vspeed > 1)
                vspeed = 1
            hspeed = 0
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
                x++
            if (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0)))
                inwall = 0
        }
    }
    else
    {
        event_user(3)
        event_user(4)
    }
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
    {
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        event_user(0)
    }
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1 && modo_lava == 0)
    {
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
        event_user(0)
    }
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "mountain" && global.modo_noche == 1 && modo_lava == 0)
    {
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        event_user(0)
    }
    else if (y > room_height && held == 0)
        instance_destroy()
    if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y - 12) && swimming == 1)
    {
        y = (obj_lava_water.y - 12)
        vspeed = 0
    }
    else if (swimming == 1)
    {
        if (vspeed <= -0.4)
            vspeed = -0.4
        else
            vspeed -= 0.04
    }
}
else if (mytop != obj_lighting && instance_exists(mytop))
{
    with (mytop)
        instance_destroy()
    mytop = obj_lighting
}
