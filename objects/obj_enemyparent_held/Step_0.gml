var col_mario_left, col_mario_right;
if (y < -20 && vspeed < 0)
    y = -20
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (held == 0)
{
    col_mario_left = collision_rectangle((bbox_left - 6), (bbox_top + 8), bbox_left, (bbox_bottom - 4), obj_mario, 0, 0)
    col_mario_right = collision_rectangle(bbox_right, (bbox_top + 8), (bbox_right + 6), (bbox_bottom - 4), obj_mario, 0, 0)
    if (instance_exists(obj_mario) && (!instance_exists(obj_invincibility)) && ((col_mario_left && obj_mario.direct == 1) || (col_mario_right && obj_mario.direct == -1)) && object_index != obj_shell && object_index != obj_shell_empty && object_index != obj_spiny_empty && obj_mario.bbox_bottom > (bbox_top + 5) && obj_mario.bbox_top < (bbox_bottom - 4) && scr_canhold() && (sprite_height <= 30 || object_index == obj_mechakoopa_held) && (object_index != obj_spring || (object_index == obj_spring && ready == 0 && ready2 == 0)) && inmune == 0)
    {
        obj_mario.holding = 2
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
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && image_speed != 0 && inmune == 0 && vspeed != 0 && hspeed == 0 && object_index != obj_bobomb_hold && object_index != obj_galoomba_hold && object_index != obj_galoomba_hold2)
    {
        hspeed = (max(0, (abs(hspeed) - 0.075)) * sign(hspeed))
        if (abs(hspeed) < 0.075)
            hspeed = 0
        obj_mario.x += hspeed
        if (object_index == obj_spring)
            obj_mario.y = ((y + (image_index * 4)) - 32)
        else
            obj_mario.y = ceil((bbox_top - (31 - vspeed)))
    }
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            event_inherited()
            if (gravity == 0)
            {
                if (swimming == 0)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.085)) * sign(hspeed))
                    if (abs(hspeed) < 0.085)
                        hspeed = 0
                }
                else if (swimming == 1)
                {
                    hspeed = (max(0, (abs(hspeed) - 0.085)) * sign(hspeed))
                    if (abs(hspeed) < 0.085)
                        hspeed = 0
                }
            }
            if ((collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_hurtsolid2, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solidphy, 0, 0)) && vspeed < 0)
            {
                hspeed = 0
                inwall = 1
            }
        }
        else
        {
            if (object_index == obj_galoomba_hold || object_index == obj_bobomb_hold)
                direct = (-direct)
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x++
            if ((!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_hurtsolid2, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solidphy, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_left, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_right, 0, 0)))
                inwall = 0
        }
    }
    else if instance_exists(obj_deadmario)
    {
        vspeed = 0
        gravity = 0
    }
    else
        event_inherited()
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && object_index != obj_bobomb_hold && modo_lava == 0)
    {
        if (global.apariencia != 0)
        {
            if (object_index == obj_shell)
                instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
            else
                instance_create((x + 8), (obj_lava_water.y - 26), obj_splash_lava)
        }
        modo_lava = 1
    }
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1 && object_index != obj_bobomb_hold && modo_lava == 0)
    {
        if (global.apariencia != 0)
        {
            if (object_index == obj_shell)
                instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
            else
                instance_create((x + 8), (obj_lava_water.y - 26), obj_splash_posion)
        }
        modo_lava = 1
    }
    else if (y > room_height && object_index != obj_cap_mario && object_index != obj_helmet && object_index != obj_helmet_spiny && held == 0)
        instance_destroy()
    if (instance_exists(obj_lava_water) && (y + 8) <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
        y = (obj_lava_water.y - 20)
}
