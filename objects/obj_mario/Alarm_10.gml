/// @description Handles powerup specific projectiles, tail spinning, and statue morphing
if (disablecontrols == 0 && (holding == 0 || (holding == 3 && global.yoshi == 2)) && skidnow == 0 && walljump == 0 && stompstyle == 0)
{
    if (isduck == 0)
    {
        if (global.powerup == 3 && global.yoshi == 0)
        {
            var clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown, 0, 0)
            if (clown_col && clown_col.inmario == 1)
                exit
            else
            {
                audio_stop_sound(snd_spin)
                audio_play_sound(snd_spin, 0, false)
                caped = 1
                alarm[11] = 25
            }
        }
        else if (global.powerup == 2)
        {
            if (instance_number(obj_fireball) < 2)
            {
                clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
                if (clown_col && clown_col.inmario == 1)
                    exit
                else
                {
                    if instance_exists(obj_brickhelmet)
                        var o_fire = obj_fireball_b
                    else
                        o_fire = obj_fireball
                    if (global.apariencia == 3)
                        firing = 20
                    else
                        firing = 9
                    if (global.apariencia == 0)
                    {
                        with (instance_create((x + (8 * direct)), (y + 12), o_fire))
                            hspeed = (3 * other.direct)
                    }
                    else
                    {
                        with (instance_create((x + (14 * direct)), (y + 12), o_fire))
                            hspeed = (3 * other.direct)
                    }
                }
            }
            else if (stompstyle == 1)
                alarm[10] = 4
        }
        else if (global.powerup == -38)
        {
            if (instance_number(obj_snowball) < 2)
            {
                clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
                if (clown_col && clown_col.inmario == 1)
                    exit
                else
                {
                    firing = 20
                    with (instance_create((x + (14 * direct)), (y + 12), obj_snowball))
                        hspeed = (2.6 * other.direct)
                }
            }
            else if (stompstyle == 1)
                alarm[10] = 4
        }
        else if (global.powerup == -50 && instance_number(obj_superball) < 1)
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
            if (clown_col && clown_col.inmario == 1)
                exit
            else
            {
                firing = 9
                if (isswim == 0)
                {
                    with (instance_create(x, (y + 12), obj_superball))
                        hspeed = (4.5 * other.direct)
                }
                else
                {
                    with (instance_create(x, (y + 12), obj_superball))
                        hspeed = (3 * other.direct)
                }
            }
        }
        else if (global.powerup == -39 && sprite_index != scr_mariojumpstar() && (!instance_exists(obj_spinner)) && global.yoshi == 0)
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown, 0, 0)
            if (clown_col && clown_col.inmario == 1)
                exit
            else
                instance_create(x, y, obj_spinner)
        }
        else if (global.powerup == -85 && (!instance_exists(obj_link_atack)) && global.yoshi == 0 && down_atack == 0 && arrow == 0)
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown, 0, 0)
            if (clown_col && clown_col.inmario == 1)
                exit
            else
            {
                with (instance_create(x, y, obj_link_atack))
                {
                    if (other.direct == -1)
                        mask_index = spr_SMB_link_atack_mask
                }
            }
        }
        else if (global.powerup == -46 && sprite_index != scr_mariojumpstar())
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
            if (clown_col && clown_col.inmario == 1)
                exit
            else if (instance_number(obj_hammer) < 2)
            {
                firing = 9
                if instance_exists(obj_brickhelmet)
                    var hammer = obj_hammer_b
                else
                    hammer = obj_hammer
                with (instance_create((x + (14 * direct)), (y + 12), hammer))
                    hspeed = ((abs(other.hspeed) + 1.5) * other.direct)
            }
        }
    }
}


