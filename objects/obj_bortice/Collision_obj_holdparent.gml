if (other.held == 0 && other.y < (y + 8))
{
    if (other.vspeed > 0)
        other.vspeed -= 0.4
    else if (other.y <= (y - 92))
    {
        other.vspeed--
        if (other.vspeed < -3)
            other.vspeed = -3
    }
    else
    {
        other.vspeed--
        if (other.vspeed < -2)
            other.vspeed = -2
    }
}

