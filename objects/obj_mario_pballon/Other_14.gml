var col_one_top, block, col_one_bottom;
if (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0)))
{
    if (vspeed > 0)
    {
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
        block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_blockparent, 0, 0)
        if (speed > 1 && block && block.ready == 0)
        {
            with (block)
                event_user(3)
        }
        if (vspeed > 0.1)
            speed = (-speed)
        else
            speed = 0
    }
    while (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom - 1), obj_solidtop, 0, 0) && (!place_meeting(x, y, obj_solidtop)))
        y--
    while (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom - 1), obj_physicssolid, 0, 0) && (!place_meeting(x, y, obj_physicssolid)))
        y--
}
if (vspeed < 0)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_hurtsolid2, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(x, y, obj_solid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_physicssolid, 1, 0) && (!place_meeting(x, y, obj_physicssolid)))
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
        block = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, (bbox_top - 2), obj_blockparent, 0, 0)
        if (vspeed < -1 && block && block.ready == 0)
        {
            with (block)
                event_user(2)
        }
        if (vspeed < -0.1)
            speed = (-speed)
        else
            speed = 0
    }
}

