switch ready
{
    case 1:
        switch direct_t
        {
            case 1:
                if (y <= (ystart - 32))
                {
                    vspeed = 0
                    y = (ystart - 32)
                    alarm[1] = 60
                    ready = 2
                }
                break
            case 2:
                if (x <= (xstart - 32))
                {
                    hspeed = 0
                    x = (xstart - 32)
                    alarm[1] = 60
                    ready = 2
                }
                break
            case 3:
                if (y >= (ystart + 32))
                {
                    vspeed = 0
                    y = (ystart + 32)
                    alarm[1] = 60
                    ready = 2
                }
                break
            case 4:
                if (x >= (xstart + 32))
                {
                    hspeed = 0
                    x = (xstart + 32)
                    alarm[1] = 60
                    ready = 2
                }
                break
        }

        break
    case 3:
        event_user(direct_t)
        break
    case 5:
        switch direct_t
        {
            case 1:
                if (y <= ystart)
                {
                    vspeed = 0
                    y = ystart
                    alarm[0] = 120
                    ready = 0
                    event_user(6)
                }
                break
            case 2:
                if (x <= xstart)
                {
                    hspeed = 0
                    x = xstart
                    alarm[0] = 120
                    ready = 0
                    event_user(6)
                }
                break
            case 3:
                if (y >= ystart)
                {
                    vspeed = 0
                    y = ystart
                    alarm[0] = 120
                    ready = 0
                    event_user(6)
                }
                break
            case 4:
                if (x >= xstart)
                {
                    hspeed = 0
                    x = xstart
                    alarm[0] = 120
                    ready = 0
                    event_user(6)
                }
                break
        }

        break
}

