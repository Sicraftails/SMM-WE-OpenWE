if instance_exists(obj_mario)
{
    if (obj_mario.state == 1)
    {
        var m_speed = (abs(obj_mario.hspeed) + 1)
        if (rot == 1)
        {
            if (up == 0)
            {
                if (rotacion > -5)
                    rotacion -= m_speed
                else
                    up = 1
            }
            else if (up == 1)
            {
                if (rotacion < 5)
                    rotacion += m_speed
                else
                    up = 0
            }
        }
    }
    else
    {
        up = 0
        rotacion = 0
    }
}
else if (fallow != obj_lighting && instance_exists(fallow))
{
    if (fallow.hspeed != 0)
    {
        m_speed = (abs(fallow.hspeed) + 1)
        if (rot == 1)
        {
            if (up == 0)
            {
                if (rotacion > -5)
                    rotacion -= m_speed
                else
                    up = 1
            }
            else if (up == 1)
            {
                if (rotacion < 5)
                    rotacion += m_speed
                else
                    up = 0
            }
        }
    }
    else
    {
        up = 0
        rotacion = 0
    }
}
