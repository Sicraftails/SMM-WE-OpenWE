if (hardness < 2 && stomp != -1)
{
    event_user(15)
    cooldown = 6
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
    with (obj_mario)
    {
        hspeed = (-((2 * direct)))
        dash_atack = 0
        dash_cont = 0
    }
}


