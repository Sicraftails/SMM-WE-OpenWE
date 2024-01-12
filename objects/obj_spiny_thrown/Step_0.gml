event_inherited()
if (gravity != 0)
{
    if (vspeed < -2.2)
        gravity = 0.3
    else
        gravity = 0.15
}
if (gravity == 0)
{
    with (instance_create(x, y, obj_spiny))
        direct = other.direct
    instance_destroy()
}

