var col_one_left, col_one_right, pow_right, pow_left;
if ((hspeed < 0 && collision_rectangle(((bbox_left + hspeed) - 2), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle(((bbox_right + hspeed) + 2), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left + hspeed) - 2), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle(((bbox_right + hspeed) + 2), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left + hspeed) - 2), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed > 0 && collision_rectangle(((bbox_right + hspeed) + 2), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left + hspeed) - 2), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle(((bbox_right + hspeed) + 2), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left + hspeed) - 2), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle(((bbox_right + hspeed) + 2), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0)))
{
    col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
    pow_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
    pow_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
    if (hspeed < 0 && pow_right && pow_right.held == 0)
    {
        with (pow_right)
        {
            explode = 1
            event_user(6)
        }
    }
    if (hspeed > 0 && pow_left && pow_left.held == 0)
    {
        with (pow_left)
        {
            explode = 1
            event_user(6)
        }
    }
    if (hspeed > 0 && col_one_left)
    {
        with (col_one_left)
        {
            rot = 1
            event_user(0)
        }
    }
    else if (hspeed < 0 && col_one_right)
    {
        with (col_one_right)
        {
            rot = 1
            event_user(0)
        }
    }
    else if (!audio_is_playing(scr_snd_bump()))
        audio_play_sound(scr_snd_bump(), 0, false)
    instance_create(x, y, obj_blockbumper)
    hspeed = 0
    if (collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 2), obj_solidtop, 0, 0) || collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 2), obj_physicssolid, 0, 0))
        vspeed = (-(3 - (2 * swimming)))
}

