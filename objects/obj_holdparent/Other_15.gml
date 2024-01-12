vspeed = (-((3 - (1.5 * swimming))))
if (other.hspeed == 0)
{
    if (((other.bbox_left + other.bbox_right) / 2) < ((bbox_left + bbox_right) / 2))
        hspeed = 0.6
    else if (((other.bbox_left + other.bbox_right) / 2) > ((bbox_left + bbox_right) / 2))
        hspeed = -0.6
}
else if (other.hspeed > 0)
    hspeed = 0.6
else if (other.hspeed < 0)
    hspeed = -0.6
