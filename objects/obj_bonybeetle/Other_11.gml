if (wings == 0)
{
    with (instance_create(round(x), y, obj_crumblebony))
        direct = other.direct
    instance_destroy()
}
else
{
    with (instance_create((x + (9 * direct)), (y + 9), obj_wings_dead))
        image_xscale = other.direct
    wings = 0
    alarm[10] = 2
}

