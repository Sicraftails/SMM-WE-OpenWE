event_inherited()
if (wings == 0)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
    {
        if (hspeed > 1)
        {
            hspeed -= 0.08
            if (hspeed <= 1)
                hspeed = 1
        }
        else if (hspeed < -1)
        {
            hspeed += 0.08
            if (hspeed >= -1)
                hspeed = -1
        }
    }
    else if (hspeed > 1.1)
    {
        hspeed -= 0.08
        if (hspeed <= 1.1)
            hspeed = 1.1
    }
    else if (hspeed < -1.1)
    {
        hspeed += 0.08
        if (hspeed >= -1.1)
            hspeed = -1.1
    }
}

