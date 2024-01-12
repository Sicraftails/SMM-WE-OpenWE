if (hspeed != 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        hspeed = -0.2
    else
        hspeed = 0.2
}
alarm[11] = 60

