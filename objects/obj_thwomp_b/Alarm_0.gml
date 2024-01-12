if (ready == 2)
{
    switch direct_t
    {
        case 1:
            vspeed = -1
            break
        case 2:
            hspeed = 1
            break
        case 3:
            hspeed = -1
            break
    }

    ready = 3
    image_index = 0
    direct = 1
    groundpount_cont = 0
}

