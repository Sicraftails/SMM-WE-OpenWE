if (global.apariencia == 3)
{
    if (y > (other.y + 126))
    {
        vspeed = 0
        y = (other.y + 126)
        if (ready == 0)
        {
            ready = 1
            alarm[1] = 10
        }
    }
}
else if (y > (other.y + 144))
{
    vspeed = 0
    y = (other.y + 144)
    ready = 1
}

