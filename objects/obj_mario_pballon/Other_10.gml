if (ready == 2 && speed != 0)
{
    if (inf == 0)
    {
        image_yscale -= 0.05
        if (image_yscale < 0.9)
            inf = 1
    }
    else
    {
        image_yscale += 0.05
        if (image_yscale > 1)
            inf = 0
    }
    image_xscale = 1
}
else
{
    if (inf == 0)
    {
        image_xscale -= 0.01
        if (image_xscale < 0.9)
            inf = 1
    }
    else
    {
        image_xscale += 0.01
        if (image_xscale > 1)
            inf = 0
    }
    image_yscale = 1
}

