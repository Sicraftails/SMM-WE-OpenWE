if (inmune == 0)
{
    if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.stompstyle == 0 && global.yoshi == 0)
    {
        if (global.apariencia != 4)
        {
            with (other.id)
                event_user(1)
            event_user(1)
        }
    }
    else if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && (global.yoshi > 0 || other.stompstyle == 1))
    {
        with (other.id)
            event_user(1)
        event_user(0)
    }
    else if instance_exists(obj_invincibility)
        event_user(0)
    else if (empujar == 1)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)) && hspeed < 0)
        {
            other.hspeed = -2.5
            event_user(0)
        }
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)) && hspeed > 0)
        {
            other.hspeed = 2.5
            event_user(0)
        }
    }
}

