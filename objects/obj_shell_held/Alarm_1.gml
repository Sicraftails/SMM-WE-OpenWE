if (swimming == 1)
{
    if (hspeed > 0)
    {
        prevhspeed = 1.5
        hspeed = 1.5
    }
    else if (hspeed < 0)
    {
        prevhspeed = -1.5
        hspeed = -1.5
    }
}
else if (hspeed > 0)
{
    prevhspeed = 3.3
    hspeed = 3.3
}
else if (hspeed < 0)
{
    prevhspeed = -3.3
    hspeed = -3.3
}

