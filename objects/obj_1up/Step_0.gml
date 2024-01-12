event_inherited()
if (charge == 1)
{
    if (gravity == 0 && wings == 0)
    {
        if (!instance_exists(obj_invincibility))
        {
            if ((!instance_exists(obj_mario)) || obj_mario.x < x)
            {
                hspeed -= 0.0324
                if (hspeed < -1)
                    hspeed = -1
            }
            else
            {
                hspeed += 0.0324
                if (hspeed > 1)
                    hspeed = 1
            }
        }
        else if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        {
            hspeed += 0.0324
            if (hspeed > 1)
                hspeed = 1
        }
        else
        {
            hspeed -= 0.0324
            if (hspeed < -1)
                hspeed = -1
        }
        if (delay > 0)
            delay--
    }
    if (ready == 0)
    {
        xscale2 += 0.025
        yscale2 -= 0.025
        if (xscale2 > 1.25)
            ready = 1
    }
    else if (ready == 1)
    {
        xscale2 -= 0.025
        yscale2 += 0.025
        if (xscale2 < 0.75)
            ready = 0
    }
}

