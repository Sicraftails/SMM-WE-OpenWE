var col_estalactita, col_mario_left, col_mario_right;
if (y < -20 && vspeed < 0)
    y = -20
if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 0 && held == 0 && inup == 1)
{
    if (!place_meeting(x, (y - 16), obj_solid))
        inup = 0
}
mario2 = collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_mario, 1, 0)
if (mario2 && held == 0 && inup == 0 && inmune == 0 && mario2.bbox_bottom < ((bbox_top - vspeed) + 5) && mario2.vspeed >= 0)
    event_user(7)
col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_icicle, 1, 0)
if (col_estalactita && col_estalactita.vspeed > 0 && held == 0 && inup == 0)
{
    event_user(7)
    with (col_estalactita)
        event_user(0)
}
if (held == 0)
{
    col_mario_left = collision_rectangle((bbox_left - 6), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_mario, 0, 0)
    col_mario_right = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 6), (bbox_bottom - 4), obj_mario, 0, 0)
    if (instance_exists(obj_mario) && ((col_mario_left && obj_mario.direct == 1) || (col_mario_right && obj_mario.direct == -1)) && scr_canhold() && inmune == 0 && inup == 0)
    {
        if (mytop != obj_lighting && instance_exists(mytop))
        {
            with (mytop)
                instance_destroy()
            mytop = obj_lighting
        }
        obj_mario.holding = 2
		if wings = 1{
	    with (instance_create((x + 17), (y + 8), obj_wings_dead))
	        direct = -1
	    with (instance_create((x - 3), (y + 8), obj_wings_dead))
	    {
	        sprite_index = spr_wings_dead2
	        direct = -1
	    }
		wings = 0
		}
        if (global.apariencia == 2 && obj_mario.isduck == 1)
            obj_mario.isduckhold = 1
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
    }
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
        swimming = 1
    else
        swimming = 0
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            event_user(3)
            event_user(4)
            if (gravity == 0)
            {
                if (swimming == 0)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.145)) * sign(hspeed))
                    if (abs(hspeed) < 0.145)
                        hspeed = 0
                }
                else if (swimming == 1)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.245)) * sign(hspeed))
                    if (abs(hspeed) < 0.244)
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
            if (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0))
                inwall = 0
        }
    }
    else if instance_exists(obj_deadmario)
    {
        vspeed = 0
        gravity = 0
    }
    else
    {
        event_user(3)
        event_user(4)
    }
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
    {
        if (global.apariencia != 0)
            instance_create((x + 8), (obj_lava_water.y - 26), obj_splash_lava)
        modo_lava = 1
    }
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) >= obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 1 && modo_lava == 0)
    {
        if (global.apariencia != 0)
            instance_create((x + 8), (obj_lava_water.y - 26), obj_splash_posion)
        modo_lava = 1
    }
    else if (y > room_height && held == 0)
        instance_destroy()
    if (instance_exists(obj_lava_water) && (y + 8) <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
        y = (obj_lava_water.y - 20)
    if (mytop != obj_lighting && instance_exists(mytop) && instance_exists(obj_mario))
    {
        mytop.x = x
        mytop.y = ((y + 1) + vspeed)
    }
}
else if (mytop != obj_lighting && instance_exists(mytop))
{
    with (mytop)
        instance_destroy()
    mytop = obj_lighting
}
if (wings == 1)
{
    if (!instance_exists(obj_deadmario))
    {
        if (global.apariencia == 3)
            wings_anim += 0.5
        else
            wings_anim += 0.12
    }
	hspeed = -0.6
}
if (wings == 1)
{
    if (y > (ystart + 16))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 16))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
}