if (wings == 1)
{
    if (direct == 1)
    {
        with (instance_create((x - 9), (y + 9), obj_wings_dead_b))
            direct = 1
    }
    else
    {
        with (instance_create((x + 9), (y + 9), obj_wings_dead_b))
            direct = -1
    }
}

