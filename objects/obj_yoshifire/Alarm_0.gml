if (vspeed == 0)
{
    if (hspeed > 0)
        hspeed = 3
    else if (hspeed < 0)
        hspeed = -3
}
else if (hspeed > 0)
    hspeed = 2.5
else if (hspeed < 0)
    hspeed = -2.5
direct = (1 * sign(hspeed))

