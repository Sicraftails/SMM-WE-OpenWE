if (vspeed == 0 && state == 1 && turning == 0)
{
    alt = choose(0, 0, 0, 1, 0, 0, 0)
    if (alt == 1)
    {
        alarm[4] = 1
        alarm[0] = 120
    }
    else
    {
        if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
            vspeed = -0.5
        else
            vspeed = choose(-2.5, -2.5, -3.5, -2.5)
        state = 2
        alarm[0] = 120
    }
}
else
    alarm[0] = 120

