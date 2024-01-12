if (block_out == 1)
{
    vspeed = -1
    block_out = 0
    alarm[10] = 60
}
else if (wings == 1 && paracaidas == 0)
{
    hspeed = (0.5 * direct)
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else
{
    y_start = y
    vspeed = 1
    hspeed = 0.5
}

