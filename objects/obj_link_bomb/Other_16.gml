var hs_normal = 0.5
if (direct == 1 && hspeed > hs_normal)
{
    hspeed -= 0.04
    if (hspeed <= hs_normal)
        hspeed = hs_normal
}
else if (direct == -1 && hspeed < (-hs_normal))
{
    hspeed += 0.04
    if (hspeed >= (-hs_normal))
        hspeed = (-hs_normal)
}


