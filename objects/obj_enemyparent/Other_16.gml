if ((gravity == 0) and not (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+5,obj_slopeparent,1,0)))
{
    if (hspeed < 0)
    {
        if ((!(collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_physicssolid, 0, 0))))
            hspeed = (-hspeed)
    }
    else if (hspeed > 0)
    {
        if ((!(collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0))) && (!(collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_physicssolid, 0, 0))))
            hspeed = (-hspeed)
    }
}