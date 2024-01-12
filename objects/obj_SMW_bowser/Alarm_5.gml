if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
    vspeed = -0.5
else
    vspeed = choose(-3, -3.5, -3, -3)
if instance_exists(obj_mario)
{
    if (obj_mario.x < x)
        hspeed = ((abs((x / obj_mario.x)) + 0.8) * direct)
    else
        hspeed = ((abs((obj_mario.x / x)) + 0.8) * direct)
}
state = 4

