if instance_exists(obj_mario)
{
    x = obj_mario.x
    y = ((obj_mario.y + 18) + obj_mario.vspeed)
    if (obj_mario.groundpount < 2 || obj_mario.groundpount > 3)
        instance_destroy()
    obj_mario.state = 2
    if ((collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom + 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom + 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_physicssolid, 0, 0)) && (!collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom + 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_blockparent, 0, 0)))
        instance_destroy()
    if (obj_mario.vspeed == 0)
    {
        inc++
        if (inc > 3)
            instance_destroy()
    }
}
else
    instance_destroy()

