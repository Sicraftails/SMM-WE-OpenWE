if (wings == 1)
{
    with (instance_create((x + (8 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
}

