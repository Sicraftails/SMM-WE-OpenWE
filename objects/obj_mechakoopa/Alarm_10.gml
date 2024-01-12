if (hspeed == 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        hspeed = -0.5
    else
        hspeed = 0.5
}
alarm[11] = 60

