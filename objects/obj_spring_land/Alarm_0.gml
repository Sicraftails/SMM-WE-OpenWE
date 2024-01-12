if (instance_exists(mebelow) && instance_exists(obj_mario))
    offsetxscale = (-mebelow.offsetxscale)
switch offsetnext
{
    case 0:
        offset = offsetxscale
        break
    case 1:
        offset = 0
        break
    case 2:
        offset = (-offsetxscale)
        break
    case 3:
        offset = 0
        break
}

offsetnext++
if (offsetnext == 4)
    offsetnext = 0
alarm[0] = 12

