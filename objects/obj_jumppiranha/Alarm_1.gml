if (global.apariencia != 2 && wings == 1)
{
    if (instance_exists(obj_mario) && gravity == 0)
    {
        jump_plant = 1
        vspeed = (-(4.21 - (2 * swimming)))
    }
    else
    {
        alarm[1] = 2
        exit
    }
}

