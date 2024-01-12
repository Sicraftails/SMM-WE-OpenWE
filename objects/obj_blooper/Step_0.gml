if instance_exists(obj_mario)
{
    if ((!ready) && y > obj_mario.y)
    {
        ready = 1
        gravity = 0
        alarm[0] = 40
        if (obj_mario.x > x)
            motion_set(45, 1.5)
        else
            motion_set(135, 1.5)
    }
    else if ((!ready) && gravity == 0 && y < obj_mario.y)
    {
        ready = 1
        gravity = 0
        alarm[0] = 40
        if (obj_mario.x > x)
            motion_set(45, 1.5)
        else
            motion_set(135, 1.5)
    }
}
if (ready == 0)
    gravity = 0.05
if (vspeed > 0.5)
    vspeed = 0.5

