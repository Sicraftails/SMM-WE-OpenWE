event_inherited()
if (wings == 0)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
    {
        if (hspeed > 0.5)
        {
            hspeed -= 0.08
            if (hspeed <= 0.5)
                hspeed = 0.5
        }
        else if (hspeed < -0.5)
        {
            hspeed += 0.08
            if (hspeed >= -0.5)
                hspeed = -0.5
        }
    }
    else if (hspeed > 1)
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
    if (gravity == 0)
    {
        if (global.modo_noche == 1)
            vspeed = -5.125
        else
            vspeed = -4
    }
    else if (!instance_exists(obj_deadmario))
        gravity = 0.125
}

