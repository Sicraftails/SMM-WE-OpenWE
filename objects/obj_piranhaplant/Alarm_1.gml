vspeed = 0
hspeed = 0
switch direct_t
{
    case 0:
        y = (ystart - 32)
        break
    case 1:
        x = (xstart + 32)
        break
    case 2:
        y = (ystart + 32)
        break
    case 3:
        x = (xstart - 32)
        break
}

alarm[2] = 90

