if instance_exists(obj_mario)
{
    if (obj_mario.state == 1)
    {
        var m_speed = (abs(obj_mario.hspeed) + 1)
        if (rot == 1)
        {
            if (up == 0)
            {
                if (rotacion > -10)
                    rotacion -= m_speed
                else
                    up = 1
            }
            else if (up == 1)
            {
                if (rotacion < 10)
                    rotacion += m_speed
                else
                    up = 0
            }
        }
    }
    else
        up = 0
    if (place_free(x, (y + 1)) && obj_mario.vspeed > 0 && obj_mario.stompstyle == 0 && obj_mario.state != 3)
    {
        if (direct == 1)
        {
            if (rotacion < 35)
                rotacion += 2.25
            else
                rotacion = 35
        }
        else if (rotacion > -35)
            rotacion -= 2.25
        else
            rotacion = -35
    }
    else if (obj_mario.state != 1)
    {
        if (rotacion < 0)
            rotacion += 2.25
        else if (rotacion > 0)
            rotacion -= 2.25
        else
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
                if (rotacion > -10)
                    rotacion -= m_speed
                else
                    up = 1
            }
            else if (up == 1)
            {
                if (rotacion < 10)
                    rotacion += m_speed
                else
                    up = 0
            }
        }
    }
    else
        up = 0
    if (fallow.vspeed > 0)
    {
        if (direct == 1)
        {
            if (rotacion < 35)
                rotacion += 2.25
            else
                rotacion = 35
        }
        else if (rotacion > -35)
            rotacion -= 2.25
        else
            rotacion = -35
    }
    else if (fallow.hspeed == 0)
    {
        if (rotacion < 0)
            rotacion += 2.25
        else if (rotacion > 0)
            rotacion -= 2.25
        else
            rotacion = 0
    }
}
