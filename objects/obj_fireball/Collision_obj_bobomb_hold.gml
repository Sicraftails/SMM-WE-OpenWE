if ((bbox_left + (other.bbox_right / 2)) > (other.bbox_left + (other.bbox_right / 2)))
{
    other.hspeed = -1.2
    other.direct = -1
}
else
{
    other.hspeed = 1.2
    other.direct = 1
}
other.vspeed = -1.5
event_user(0)
