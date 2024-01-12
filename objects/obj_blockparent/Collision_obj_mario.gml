if (vspeed < 0 && other.bbox_bottom < (yprevious + 5) && other.groundpount == 0)
{
    other.vspeed = (-(3 - (2 * other.isswim)))
    other.y--
}