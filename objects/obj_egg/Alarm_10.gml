if (global.apariencia < 2)
{
    if (paracaidas == 1)
        hspeed = -0.6
    else if (gravity == 0)
    {
        image_speed = 0.3
        if (!ready)
            ready = 1
    }
    else
        alarm[10] = 1
}
else if (wings == 1 && paracaidas == 0)
{
    hspeed = (0.6 * direct)
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else if (global.apariencia == 3)
    image_speed = 0.5
