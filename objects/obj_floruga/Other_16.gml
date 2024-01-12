if (gravity == 0)
{
    if (hspeed < 0)
    {
        if ((!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 12), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 12), obj_slopeparent, 0, 0)))
        {
            hspeed = (-hspeed)
            x = xprevious
            if (state == 1)
                alarm[1] = 40
        }
    }
    else if (hspeed > 0)
    {
        if ((!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 12), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 12), obj_slopeparent, 0, 0)))
        {
            hspeed = (-hspeed)
            x = xprevious
            if (state == 1)
                alarm[1] = 40
        }
    }
}

