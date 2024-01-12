if (wings == 0)
    event_user(0)
else if (wings == 1)
{
    with (instance_create((x - (9 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
    wings = 0
}
