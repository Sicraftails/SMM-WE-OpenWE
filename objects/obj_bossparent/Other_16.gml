if (gravity == 0)
{
    if (hspeed < 0)
    {
        if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0)))
        {
            if ((!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_muncher, 0, 0)))
            {
                prevhspeed = (-hspeed)
                hspeed = (-hspeed)
            }
        }
        else if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0)))
        {
            if ((!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_pinchos, 0, 0)))
            {
                prevhspeed = (-hspeed)
                hspeed = (-hspeed)
            }
        }
        else if (!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0))
        {
            prevhspeed = (-hspeed)
            hspeed = (-hspeed)
        }
    }
    else if (hspeed > 0)
    {
        if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0)))
        {
            if ((!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 5), obj_muncher, 1, 0)))
            {
                prevhspeed = (-hspeed)
                hspeed = (-hspeed)
            }
        }
        else if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0)))
        {
            if ((!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 5), obj_pinchos, 1, 0)))
                hspeed = (-hspeed)
        }
        else if (!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0))
            hspeed = (-hspeed)
    }
}

