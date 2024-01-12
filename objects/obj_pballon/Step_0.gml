if (paracaidas == 1)
{
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
else if (wings == 1)
{
    if (!instance_exists(obj_deadmario))
        wings_anim += 0.12
    y = (ystart + (sin((timer * 0.04375)) * 8))
    timer++
}
else
{
    y = (ystart + (sin((timer * 0.04375)) * 2))
    timer++
    hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
    if (abs(hspeed) < 0.15)
        hspeed = 0
}

