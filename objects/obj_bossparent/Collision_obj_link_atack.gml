if (hardness < 2 && other.ready_boss == 0 && stomp != -1)
{
    event_user(15)
    cooldown = 6
    if (object_index == obj_bowserjr)
        firehitpoints -= 2
    else
        firehitpoints -= 5
    if (firehitpoints <= 0)
    {
        if (object_index == obj_bowserjr)
        {
            firehitpoints = 5
            event_user(1)
        }
        else if (object_index == obj_boomboom)
        {
            firehitpoints = 10
            event_user(1)
        }
        else
            event_user(0)
    }
    with (other.id)
        ready_boss = 1
}


