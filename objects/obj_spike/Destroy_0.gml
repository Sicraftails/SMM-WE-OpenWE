if (wings == 1)
{
    with (instance_create((x - (9 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
}
if (ball != obj_lighting && instance_exists(ball))
{
    if (global.bg_level == "snow")
    {
        with (ball)
            event_user(0)
    }
    else
    {
        with (ball)
            instance_destroy()
    }
}

