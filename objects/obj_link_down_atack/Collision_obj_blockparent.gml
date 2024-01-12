if (ready == 0 && other.ready == 0)
{
    with (other.id)
        event_user(3)
    ready = 1
    with (obj_mario)
    {
        vspeed = (-((4 - (2.5 * isswim))))
        event_user(1)
        down_atack = 0
        down_cont = 0
    }
}


