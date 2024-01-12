if (hardness < 2 && ready == 0)
{
    event_user(15)
    firehitpoints--
    cooldown = 6
    if (firehitpoints <= 0)
    {
        if (object_index == obj_bowserjr || object_index == obj_NSMBU_bowserjr)
        {
            firehitpoints = 5
            event_user(1)
        }
        else if (object_index == obj_boomboom || object_index == obj_NSMBU_boomboom || object_index == obj_boomboom_b || object_index == obj_NSMBU_boomboom_b)
        {
            firehitpoints = 10
            event_user(1)
        }
        else
            event_user(0)
    }
    with (other.id)
        event_user(0)
}

