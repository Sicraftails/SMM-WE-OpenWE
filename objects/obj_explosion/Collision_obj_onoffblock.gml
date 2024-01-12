if (other.ready == 0 && active_block == 0)
{
    with (other.id)
        event_user(1)
    active_block = 1
}

