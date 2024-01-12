var overlap;
overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_grrrol, 0, 1)
if (overlap && overlap != id)
{
    if (((bbox_left + bbox_right) * 0.5) > ((overlap.bbox_left + overlap.bbox_right) * 0.5) || (((bbox_left + bbox_right) * 0.5) == ((overlap.bbox_left + overlap.bbox_right) * 0.5) && id > overlap.id))
        hspeed = abs(hspeed)
    else
    {
        hspeed = (-abs(hspeed))
        if (gravity == 0)
            vspeed = -1
    }
}

