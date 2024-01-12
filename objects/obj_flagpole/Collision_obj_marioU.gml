var ytemp;
if ((global.condiciones == 0) || ((global.condiciones == 1) && ((global.condiciones_clear == 1) && (check == 1))))
{
    if ((other.x > x) && (other.hspeed < 0))
    {
        if ((other.y > (y - 2)) || place_meeting((x - 4), (y + 16), obj_solid))
        {
            if (other.y >= (y + 128))
                ytemp = (y + 128)
            else
                ytemp = other.y
            with (instance_create(x, ytemp, obj_player_goal_nsmbu))
            {
                flagpole = other
                with (obj_flagpole.flag)
                    event_user(0)
                direct = 1
                image_index = 4
            }
        }
        else
        {
            with (instance_create(x, (y - 2), obj_player_goal_nsmbu))
            {
                flagpole = other
               with (obj_flagpole.flag)
                    event_user(0)
                direct = 1
                image_index = 4
            }
        }
    }
    else if ((other.y > (y - 2)) || place_meeting(x, (y + 16), obj_solid))
    {
        if (other.y >= (y + 128))
            ytemp = (y + 128)
        else
            ytemp = other.y
        with (instance_create(x, ytemp, obj_player_goal_nsmbu))
        {
            flagpole = other
            with (obj_flagpole.flag)
                    event_user(0)
        }
    }
    else
    {
        with (instance_create(x, (y - 2), obj_player_goal_nsmbu))
        {
            flagpole = other
            with (obj_flagpole.flag)
                    event_user(0)
        }
    }
    event_user(1)
	with (other.id)
        instance_destroy()
}

