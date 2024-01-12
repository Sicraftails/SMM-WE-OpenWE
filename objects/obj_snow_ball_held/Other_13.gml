var col_one_left, col_one_right, block_right, block_left, pow_right, pow_left;
if ((hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
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
    block_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_blockparent, 1, 0)
    block_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_blockparent, 1, 0)
    pow_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
    pow_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
    if (hspeed < 0 && pow_right)
    {
        with (pow_right)
        {
            explode = 1
            event_user(6)
        }
    }
    else if (hspeed < 0 && pow_left)
    {
        with (pow_left)
        {
            explode = 1
            event_user(6)
        }
    }
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
            {
                ready = 1
                vspeed = -2
                if (object_index == obj_noteblock)
                    alarm[0] = 7
                else
                    alarm[0] = 4
                event_user(0)
            }
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
            with (block_left)
            {
                ready = 1
                vspeed = -2
                if (object_index == obj_noteblock)
                    alarm[0] = 7
                else
                    alarm[0] = 4
                event_user(0)
            }
        }
    }
    event_user(0)
}


