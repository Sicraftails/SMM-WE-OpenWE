if (hspeed != 0)
    angle -= (3 * sign(hspeed))
if (hspeed > 1.5)
{
    hspeed -= 0.08
    if (hspeed <= 1.5)
        hspeed = 1.5
}
else if (hspeed < -1.5)
{
    hspeed += 0.08
    if (hspeed >= -1.5)
        hspeed = -1.5
}
event_user(3)
if (global.apariencia > 1 || fisica == 1)
    event_user(4)
