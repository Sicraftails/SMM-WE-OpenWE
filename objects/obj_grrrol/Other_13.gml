var block_right, block_left, rock_right, rock_left, col_one_left, col_one_right;
block_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_blockparent, 1, 0)
block_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 3) + hspeed), (bbox_bottom - 4), obj_blockparent, 1, 0)
rock_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_rockparent, 1, 0)
rock_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 3) + hspeed), (bbox_bottom - 4), obj_rockparent, 1, 0)
if (hspeed < 0 && rock_right)
{
    with (rock_right)
        alarm[0] = 1
}
if (hspeed > 0 && rock_left)
{
    with (rock_left)
        alarm[0] = 1
}
if (hspeed < 0 && block_right)
{
    with (block_right)
    {
        if (object_index == obj_noteblock || object_index == obj_musicblock || object_index == obj_noteblock_s || object_index == obj_onoffblock)
        {
            audio_play_sound(snd_bump, 0, false)
            ready = 1
            vspeed = -1.5
            event_user(0)
            if (object_index == obj_onoffblock)
                alarm[0] = 4
            with (other.id)
            {
                hspeed = (-hspeed)
                if (gravity == 0)
                    vspeed = -1
            }
        }
        else
            alarm[2] = 1
    }
}
if (hspeed > 0 && block_left)
{
    with (block_left)
    {
        if (object_index == obj_noteblock || object_index == obj_musicblock || object_index == obj_noteblock_s || object_index == obj_onoffblock)
        {
            audio_play_sound(snd_bump, 0, false)
            ready = 1
            vspeed = -1.5
            event_user(0)
            if (object_index == obj_onoffblock)
                alarm[0] = 4
            with (other.id)
            {
                hspeed = (-hspeed)
                if (gravity == 0)
                    vspeed = -1
            }
        }
        else
            alarm[2] = 1
    }
}
if ((hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_physicssolid, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_physicssolid, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)))
{
    col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
    if (hspeed > 0 && col_one_left)
    {
        with (col_one_left)
        {
            rot = 1
            event_user(0)
        }
    }
    if (hspeed < 0 && col_one_right)
    {
        with (col_one_right)
        {
            rot = 1
            event_user(0)
        }
    }
    audio_stop_sound(scr_snd_bump())
    audio_play_sound(scr_snd_bump(), 0, false)
    if (global.apariencia == 3)
    {
        with (instance_create((x + (22 * sign(hspeed))), y, obj_smoke))
            sprite_index = spr_NSMBU_stargrrrol
    }
    hspeed = (-hspeed)
    if (vspeed == 0)
        vspeed = -1
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_physicssolid, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solidphy, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solidphy, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
        x++
}

