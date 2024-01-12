var valor;
if (hspeed > 0)
    direct = 1
else
    direct = -1
if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
if (decender == 1)
{
    vspeed += 0.05
    switch global.apariencia
    {
        case 0:
            valor = 10
            break
        case 1:
            valor = 16
            break
        case 2:
            valor = 10
            break
        case 3:
            valor = 10
            break
    }

    if (y >= (ystart + valor))
    {
        decender = 0
        vspeed = 0
    }
}
else if (decender == 2)
{
    vspeed -= 0.05
    switch global.apariencia
    {
        case 0:
            valor = 10
            break
        case 1:
            valor = 16
            break
        case 2:
            valor = 10
            break
        case 3:
            valor = 10
            break
    }

    if (y <= (ystart - valor))
    {
        decender = 0
        vspeed = 0
    }
}

