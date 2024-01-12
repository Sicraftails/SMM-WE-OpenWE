if instance_exists(obj_mario)
{
    if (obj_mario.stompstyle == 1 || obj_mario.helice_fly == 1 || obj_mario.helice_fly == 3)
    {
        if (shake > 4)
            shake = 0
        switch shake
        {
            case 0:
                spin_x = 10
                depth = -7
                break
            case 1:
                spin_x = 2
                depth = -7
                break
            case 2:
                spin_x = -10
                depth = -7
                break
            case 3:
                spin_x = -2
                depth = -10
                break
            case 4:
                spin_x = 2
                depth = -10
                break
        }

        if (shake == 4)
            shake = 0
        else
            shake++
        alarm[0] = 1.6
    }
    else if (obj_mario.helice_fly == 2)
    {
        switch shake
        {
            case 0:
                spin_x = 10
                depth = -7
                break
            case 1:
                spin_x = 8
                depth = -7
                break
            case 2:
                spin_x = 6
                depth = -7
                break
            case 3:
                spin_x = 4
                depth = -7
                break
            case 4:
                spin_x = 2
                depth = -7
                break
            case 5:
                spin_x = 0
                depth = -7
                break
            case 6:
                spin_x = -2
                depth = -7
                break
            case 7:
                spin_x = -4
                depth = -7
                break
            case 8:
                spin_x = -6
                depth = -7
                break
            case 9:
                spin_x = -8
                depth = -7
                break
            case 10:
                spin_x = -10
                depth = -7
                break
            case 11:
                spin_x = -8
                depth = -10
                break
            case 12:
                spin_x = -6
                depth = -10
                break
            case 13:
                spin_x = -4
                depth = -10
                break
            case 14:
                spin_x = -2
                depth = -10
                break
            case 15:
                spin_x = 0
                depth = -10
                break
            case 16:
                spin_x = 2
                depth = -10
                break
            case 17:
                spin_x = 4
                depth = -10
                break
            case 18:
                spin_x = 6
                depth = -10
                break
            case 19:
                spin_x = 8
                depth = -10
                break
        }

        if (shake == 19)
            shake = 0
        else
            shake++
        alarm[0] = 2.6
    }
    else if (obj_mario.airspin == 1)
    {
        if (shake > 7)
            shake = 0
        switch shake
        {
            case 0:
                spin_x = 10
                depth = -7
                break
            case 1:
                spin_x = -2
                depth = -7
                break
            case 2:
                spin_x = 0
                depth = -7
                break
            case 3:
                spin_x = -10
                depth = -7
                break
            case 4:
                spin_x = -2
                depth = -7
                break
            case 5:
                spin_x = 0
                depth = -10
                break
            case 6:
                spin_x = 2
                depth = -10
                break
            case 7:
                spin_x = 10
                depth = -10
                break
        }

        if (shake == 7)
            shake = 0
        else
            shake++
        alarm[0] = 1.6
    }
}
else
{
    shake = 0
    spin_x = 0
}
