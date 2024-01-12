event_inherited()
if (wings == 0)
{
    if (gravity == 0)
    {
        hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
        if (abs(hspeed) < 0.1)
            hspeed = 0
    }
}

