var col_one_bottom;
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

