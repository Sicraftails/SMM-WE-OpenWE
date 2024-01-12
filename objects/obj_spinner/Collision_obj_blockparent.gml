if (ready == 0 && other.ready == 0)
{
    with (other.id)
    {
        if (object_index == obj_flipblock)
            alarm[2] = 1
        else if (object_index == obj_noteblock)
        {
            ready = 1
            vspeed = -2
            alarm[0] = 7
            event_user(0)
        }
        else
        {
            ready = 1
            vspeed = -2
            alarm[0] = 4
            event_user(0)
            event_user(1)
        }
    }
    ready = 1
}

