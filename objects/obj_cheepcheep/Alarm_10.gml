if (hspeed == 0)
{
    if (global.bg_level == "underwater" || modo_water == 1)
    {
        if (direct == 1)
        {
            if (wings == 1)
                vspeed = 0.5
            hspeed = 0.5
        }
        else
        {
            if (wings == 1)
                vspeed = 0.5
            hspeed = -0.5
        }
    }
    else if (paracaidas == 1)
        hspeed = 0.5
}

