move += 3
rotate -= 6
if (move > 300)
{
    if (alpha <= 0)
    {
        alpha = 0
        instance_destroy()
    }
    else
        alpha -= 0.01
}


