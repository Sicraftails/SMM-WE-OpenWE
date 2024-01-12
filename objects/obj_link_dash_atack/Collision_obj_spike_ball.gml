if instance_exists(obj_mario)
{
    if (obj_mario.x < x && other.hspeed < 0)
    {
        with (obj_mario)
        {
            hspeed = -2
            dash_atack = 0
            dash_cont = 0
        }
    }
    else if (obj_mario.x > x && other.hspeed > 0)
    {
        with (obj_mario)
        {
            hspeed = 2
            dash_atack = 0
            dash_cont = 0
        }
    }
}


