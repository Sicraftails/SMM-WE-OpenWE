if (instance_exists(obj_mario) && state < 3)
{
    if (obj_mario.x > x)
    {
        if (fire == 0 && turning == 0)
            hspeed = 0.6
        else
        {
            if (prevhspeed == 0)
                prevhspeed = hspeed
            hspeed = 0
        }
    }
    else if (fire == 0 && turning == 0)
    {
        if (prevhspeed != 0)
        {
            hspeed = prevhspeed
            prevhspeed = 0
        }
        else if (hspeed > 0)
        {
            hspeed = 0.3
            if (x > (xstart + 64))
                hspeed = (-hspeed)
        }
        else if (hspeed < 0)
        {
            hspeed = -0.3
            if (x < (xstart - 64))
                hspeed = (-hspeed)
        }
    }
    else
    {
        if (prevhspeed == 0)
            prevhspeed = hspeed
        hspeed = 0
    }
}
event_user(3)
event_user(4)
event_user(6)
if (gravity > 0)
{
    gravity = 0.1
    if (vspeed > 3.2)
        vspeed = 3.2
}
if (cooldown > 0)
    cooldown--

