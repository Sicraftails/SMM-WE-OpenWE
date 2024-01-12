var semisolid, physolid, col_one_top, col_one_bottom;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    physolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (physolid && bbox_bottom < (physolid.yprevious + 5))
        y = (physolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (vspeed > 4)
        vspeed = 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0))))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        state = 1
        if (groundpount == 2)
        {
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            if instance_exists(obj_mario)
            {
                if (obj_mario.state < 2)
                {
                    with (obj_mario)
                    {
                        if (!instance_exists(obj_shake_mario))
                            instance_create(x, (y + 5), obj_shake_mario)
                        shake = 1
                        stuntime = 90
                        hspeed = 0
                        disablecontrols = 1
                    }
                }
            }
            instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
            instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
            alarm[10] = 15
            groundpount_cont = 5
            groundpount = 3
        }
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
    }
}
else
{
    state = 2
    if (groundpount == 2)
    {
        gravity = 0.3
        if (vspeed > 6)
            vspeed = 6
    }
    else if (!swimming)
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
    else if (swimming == 1)
    {
        gravity = 0.1
        if (vspeed > 0.4)
            vspeed = 0.4
    }
}
if (vspeed < 0)
{
    if (collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(x, y, obj_solid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_physicssolid, 1, 0) && (!place_meeting(x, y, obj_physicssolid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!place_meeting(x, y, obj_solidphy)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_bullebill_base, 1, 0) && (!place_meeting(x, y, obj_bullebill_base)))
            y++
        col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
        if col_one_bottom
        {
            with (col_one_bottom)
            {
                rot = 1
                event_user(0)
            }
        }
        vspeed = 0
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1)))
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    if (global.apariencia != 0)
    {
        if (global.bg_level == "forest")
            instance_create(x, (obj_lava_water.y - 28), obj_splash_posion)
        else
            instance_create(x, (obj_lava_water.y - 28), obj_splash_lava)
    }
    with (instance_create(x, y, obj_enemy_dead))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_bowserjr_dead
                break
            case 1:
                sprite_index = spr_SMB3_bowserjr_dead
                break
            case 2:
                sprite_index = spr_bowserjr_dead
                break
        }

        image_speed = 0.15
        direct = other.direct
        alarm[0] = -1
    }
    instance_destroy()
}
else if ((bbox_top - 16) > room_height && global.bg_level != "castle" && global.bg_level != "forest")
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            if (global.apariencia == 0)
                alarm[11] = 90
            else
                alarm[11] = 120
        }
    }
    instance_destroy()
}
event_user(14)

