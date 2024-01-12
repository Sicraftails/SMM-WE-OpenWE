if (((hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_solid, 1, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_physicssolid, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_physicssolid, 1, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solidphy, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_solidphy, 1, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_onewaygate_left, 1, 0))) && ready == 1)
{
    var col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    var col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
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
    var pow_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
    var pow_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
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
    var block_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_blockparent, 1, 0)
    var block_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_blockparent, 1, 0)
    if (hspeed < 0 && block_right && block_right.ready == 0)
    {
        if (block_right.object_index == obj_onoffblock)
        {
            with (block_right)
                event_user(1)
        }
        else
        {
            with (block_right)
                event_user(2)
        }
    }
    else if (hspeed > 0 && block_left && block_left.ready == 0)
    {
        if (block_left.object_index == obj_onoffblock)
        {
            with (block_left)
                event_user(1)
        }
        else
        {
            with (block_right)
                event_user(2)
        }
    }
    var shield_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_shield_left, 1, 0)
    var shield_right = collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_shield_right, 1, 0)
    if (hspeed > 0 && shield_left)
    {
        with (shield_left)
            event_user(0)
        fisica = 1
        vspeed = -1
        hspeed = (-hspeed)
        with (obj_mario)
            hspeed = 1
    }
    else if (hspeed < 0 && shield_right)
    {
        with (shield_right)
            event_user(0)
        fisica = 1
        vspeed = -1
        hspeed = (-hspeed)
        with (obj_mario)
            hspeed = -1
    }
    else
        event_user(0)
}
