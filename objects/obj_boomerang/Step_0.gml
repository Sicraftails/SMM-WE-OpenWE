if (type_rotation == 0)
    rotacion -= 10
else
    rotacion += 10
if (delito == 1)
{
    if (xscale <= 0.2)
        instance_destroy()
    else
    {
        xscale -= 0.2
        yscale -= 0.2
    }
}
if (ready != 0)
{
    if (ready == 1)
    {
        if (hspeed > -2)
            hspeed += -0.075
        else
        {
            hspeed = -2
            vspeed = 0
            ready = 0
            ready2 = 1
            ready3 = 1
        }
    }
    else if (ready == -1)
    {
        if (hspeed < 2)
            hspeed += 0.075
        else
        {
            hspeed = 2
            vspeed = 0
            ready = 0
            ready2 = 1
            ready3 = 1
        }
    }
}
if (ready2 != 0)
{
    if (ready2 == 1)
    {
        if (vspeed > 0)
            vspeed += -0.05
        else if (vspeed < 0)
            vspeed += 0.05
        else
            vspeed = 0
    }
    else if (ready2 == 2)
    {
        if (vspeed < 0.75)
            vspeed += 0.05
        else
            vspeed = 0.75
    }
}
if outside_view()
    instance_destroy()
else if (ready3 && delito == 0 && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, parent, 0, 1))
    delito = 1


