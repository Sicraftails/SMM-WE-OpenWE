if (wings == 0)
{
    if (hspeed == 0)
    {
        if (swimming == 1)
            hspeed = (0.3 * direct)
        else
            hspeed = (0.5 * direct)
    }
}
else
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
}

