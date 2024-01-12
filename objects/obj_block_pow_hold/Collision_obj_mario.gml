if (held == 0 && inmune == 0 && bouncy == 1)
{
    if (hspeed > 0 && (other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
    {
        hspeed = (other.hspeed + 1.2)
        vspeed = -1.5
        explode = 0
    }
    else if (hspeed < 0 && (other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        hspeed = (other.hspeed - 1.2)
        vspeed = -1.5
        explode = 0
    }
    else if (hspeed > 0)
    {
        hspeed = (other.hspeed + 1.2)
        vspeed = -1.5
        explode = 0
    }
}
