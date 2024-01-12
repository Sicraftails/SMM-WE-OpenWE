if (vspeed == 0 && fire == 0)
{
    state = 2
    groundpount = 0
    if (collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
        vspeed = -0.5
    else
        vspeed = -2
    if (instance_exists(obj_mario) && x > (obj_mario.x + 120) && direct == -1)
        hspeed = -2
    else if (instance_exists(obj_mario) && x < (obj_mario.x - 120) && direct == 1)
        hspeed = 2
    else
        hspeed = choose(-2, 2)
    alarm[0] = 120
}
else
    alarm[0] = 30

