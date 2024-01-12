if ((global.condiciones == 0) || ((global.condiciones == 1) && ((global.condiciones_clear == 1) && (check == 1))))
{
    if ((other.x > x) && (other.hspeed < 0))
    {
        if (other.y < (y - 2))
        {
            if place_meeting((x - 4), (y + 16), obj_solid)
            {
                with (instance_create((x + 8), other.y, obj_player_goal_smb1))
                {
                    flagpole = other
                    with (obj_flagpole.flag)
                        event_user(0)
                    direct = -1
                }
            }
            else if (other.y >= (y + 144))
            {
            }
            else
            {
                with (instance_create((x + 10), (y - 2), obj_player_goal_smb1))
                {
                    flagpole = other
                    with (obj_flagpole.flag)
                        event_user(0)
                    direct = -1
                }
            }
        }
        else
        {
            with (instance_create((x + 8), other.y, obj_player_goal_smb1))
            {
                flagpole = other
                with (obj_flagpole.flag)
                    event_user(0)
                direct = -1
            }
        }
    }
    else if (other.y < (y - 2))
    {
        with (instance_create(x, (y - 2), obj_player_goal_smb1))
        {
            flagpole = other
            with (obj_flagpole.flag)
                event_user(0)
        }
    }
    else
    {
        with (instance_create(x, other.y, obj_player_goal_smb1))
        {
            flagpole = other
            with (obj_flagpole.flag)
                event_user(0)
        }
    }
    event_user(0)
    with (other.id)
        instance_destroy()
}