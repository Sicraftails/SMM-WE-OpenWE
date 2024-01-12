if instance_exists(obj_mario)
{
    if (obj_mario.x < x && other.hspeed < 0)
    {
        with (obj_mario)
            hspeed = -1
    }
    else if (obj_mario.x > x && other.hspeed > 0)
    {
        with (obj_mario)
            hspeed = 1
    }
}


