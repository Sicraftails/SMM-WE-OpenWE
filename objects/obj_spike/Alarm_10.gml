if (wings == 0 && global.apariencia < 2)
    hspeed = ((0.5 - (0.2 * swimming)) * direct)
else if (wings == 1 && paracaidas == 0)
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
}
else if (paracaidas == 1)
    hspeed = -0.5
