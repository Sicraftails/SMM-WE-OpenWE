if (inup == 1 && other.vspeed < 0 && other.held == 0)
{
    event_user(6)
    with (other.id)
        vspeed = 0
}

