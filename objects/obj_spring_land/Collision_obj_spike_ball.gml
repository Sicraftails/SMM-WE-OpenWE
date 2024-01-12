if (obj_levelmanager.editor == 0)
{
    if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 4), bbox_top, obj_physicsparent, 0, 0) && (other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
    {
        if (global.apariencia == 1)
            other.fisica = 1
        other.hspeed = -3
        other.vspeed = (-(2.9 - (1.5 * swimming)))
        event_user(1)
    }
    else if (collision_rectangle((bbox_left - 4), bbox_top, bbox_right, bbox_top, obj_physicsparent, 0, 0) && (other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        if (global.apariencia == 1)
            other.fisica = 1
        other.hspeed = 3
        other.vspeed = (-(2.9 - (1.5 * swimming)))
        event_user(1)
    }
}

