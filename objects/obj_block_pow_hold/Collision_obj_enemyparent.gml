if (other.object_index != obj_grinder)
{
    if (explode == 1)
    {
        with (other.id)
        {
            dead_h = 1
            event_user(0)
        }
        event_user(6)
        instance_destroy()
    }
}

