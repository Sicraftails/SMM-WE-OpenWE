if (other.ready == 1 && held == 0)
{
    with (other.id)
        event_user(0)
    explode = 1
    event_user(6)
}
else if (explode == 1)
{
    with (other.id)
    {
        dead_h = 1
        event_user(0)
    }
    event_user(6)
    instance_destroy()
}

