if (wings == 0)
    event_user(0)
else
{
    vspeed = 0
    with (instance_create((x + (9 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
    wings = 0
    act_modo_vuelo = 0
    alarm[0] = 1
    alarm[10] = 2
}

