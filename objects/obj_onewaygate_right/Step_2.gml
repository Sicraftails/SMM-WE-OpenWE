if (rot == 1)
{
    if (up == 0)
    {
        if (rotacion > (rot_angle - 5))
            rotacion -= 1
        else
            up = 1
    }
    if (up == 1)
    {
        if (rotacion < (rot_angle + 5))
            rotacion += 1
        else
            up = 2
    }
    else if (up == 2)
    {
        if (rotacion > rot_angle)
            rotacion -= 1
        else
        {
            up = 0
            rot = 0
        }
    }
}
else
    rotacion = rot_angle

