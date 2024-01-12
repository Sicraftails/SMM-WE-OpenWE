if (gravity == 0)
{
    if (hspeed < 0)
    {
        if (((!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_physicssolid, 0, 0))) || collision_rectangle((bbox_left - 3), (bbox_bottom - 1), (bbox_left - 3), (bbox_bottom + 4), obj_platform_parent, 0, 0))
            hspeed = (-hspeed)
    }
    else if (hspeed > 0)
    {
        if (((!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0)) && (!collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_physicssolid, 0, 0))) || collision_rectangle((bbox_right + 3), (bbox_bottom - 1), (bbox_right + 3), (bbox_bottom + 4), obj_platform_parent, 0, 0))
            hspeed = (-hspeed)
    }
}

