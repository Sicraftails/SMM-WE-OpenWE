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
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_one_top)
                rot = 1
        }
        state = 1
        if (jump == 2)
        {
            audio_stop_sound(scr_snd_thwomp())
            audio_play_sound(scr_snd_thwomp(), 0, false)
        }
        if (big_jump == 1)
            big_jump = 0
    }
}
else
{
    state = 2
    if (paracaidas == 1)
    {
        gravity = 0.1
        if (vspeed > 0.4)
            vspeed = 0.4
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
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(x, y, obj_solid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_physicssolid, 1, 0) && (!place_meeting(x, y, obj_physicssolid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!place_meeting(x, y, obj_solidphy)))
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
    audio_stop_sound(snd_NSMBU_bowser_dead)
    audio_play_sound(snd_NSMBU_bowser_dead, 0, false)
    with (instance_create(x, y, obj_bowser_dead))
        direct = other.direct
    instance_destroy()
}
else if ((bbox_top - 16) > room_height && global.bg_level != "castle" && global.bg_level != "forest" && global.bg_level != "beach")
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    audio_stop_sound(snd_NSMBU_bowser_dead)
    audio_play_sound(snd_NSMBU_bowser_dead, 0, false)
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            alarm[11] = 90
        }
    }
    instance_destroy()
}
event_user(14)

