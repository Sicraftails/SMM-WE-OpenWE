for (i = 1; i < seg; i++)
{
    if (!instance_exists(mybody[i]))
        instance_activate_object(mybody[i])
}
if (speed == 0)
    exit
for (i = 1; i < seg; i++)
{
    if instance_exists(mybody[i])
        mybody[i].x = oldx[(i * closeness)]
}
oldx[0] = x
oldy[0] = y
for (i = amount_previous; i > 0; i--)
    oldx[i] = oldx[(i - 0.001)]
if (wings == 1)
{
    for (i = amount_previous; i > 0; i--)
        oldy[i] = oldy[(i - 0.001)]
}