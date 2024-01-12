if (ready == 1)
{
    if (vspeed < 0 && down == 0 && y <= (ystart - 8))
    {
        vspeed = 2
        down = 1
    }
    else if (vspeed > 0 && down == 1 && y >= ystart)
    {
        down = 0
        alarm[1] = 1
    }
    if (vspeed > 0 && up == 0 && y >= (ystart + 12))
    {
        up = 1
        vspeed = -2
    }
    else if (vspeed < 0 && up == 1 && y <= ystart)
    {
        up = 0
        alarm[1] = 1
    }
}
if (ready == 0)
{
    if (collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_mario, 0, 0) && obj_mario.bbox_bottom < bbox_top && obj_mario.vspeed >= 0 && ready2 == 0)
    {
        ready = 1
        ready2 = 1
        vspeed = 2
        with (obj_mario)
        {
            hspeed = 0
            event_user(15)
            groundpount = 0
        }
    }
}
if (ready2 == 1 && instance_exists(obj_mario) && collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_mario, 0, 0))
{
    obj_mario.y = ((y - 32) + vspeed)
    obj_mario.state = 0
    obj_mario.vspeed = 0
}
event_user(4)

