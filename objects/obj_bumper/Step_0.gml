depth = -7
if (ready == 1)
{
    scale += 0.04
    if (scale > 1.3)
        ready = 2
}
else if (ready == 2)
{
    scale -= 0.04
    if (scale < 1)
    {
        scale = 1
        ready = 0
    }
}

