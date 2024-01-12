event_inherited()
if (wings == 0)
{
    if (gravity == 0)
    {
        hspeed = (max(0, (abs(hspeed) - 0.2)) * sign(hspeed))
        if (abs(hspeed) < 0.2)
            hspeed = 0
    }
}

