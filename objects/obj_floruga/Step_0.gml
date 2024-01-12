event_inherited()
if (wings == 0)
    event_user(6)
if (wings == 1 && paracaidas == 0)
{
    wings_anim += 0.12
    if (gravity == 0)
    {
        if (swimming == 1)
            vspeed = -2.062
        else
            vspeed = -4.125
    }
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
        alarm[10] = 10
    }
}
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1

