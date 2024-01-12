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
        vspeed = (-((4 - (2.5 * isswim))))
        event_user(1)
        down_atack = 0
        down_cont = 0
    }
}


