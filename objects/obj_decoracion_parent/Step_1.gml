if (expand3 == 1)
{
    s_scalex -= 0.2
    s_scaley -= 0.2
    if (s_scalex < 0.8)
        expand3 = 2
}
else if (expand3 == 2)
{
    s_scalex += 0.2
    s_scaley += 0.2
    if (s_scalex > 1)
    {
        expand3 = 0
        s_scalex = 1
        s_scaley = 1
    }
}

