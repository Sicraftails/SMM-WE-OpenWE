event_inherited()
if (paracaidas == 1)
{
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
        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
    }
}
