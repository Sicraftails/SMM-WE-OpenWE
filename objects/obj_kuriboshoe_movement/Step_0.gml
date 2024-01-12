if instance_exists(obj_mario)
{
    if (obj_mario.state == 1)
    {
        if (state == 0 && (keyboard_check(global.izquierda) || keyboard_check(global.derecha)))
        {
            state = 1
            if (vspeed == 0)
            {
                vspeed = -1.8
                gravity = 0.3
            }
        }
        else if (state == 1)
        {
            if (vspeed > 0 && y > (ystart - 1))
            {
                vspeed = 0
                y = ystart
                state = 0
                if (gravity > 0)
                    gravity = 0
            }
        }
    }
    else if (obj_mario.state != 1)
    {
        vspeed = 0
        y = ystart
        state = 0
        if (gravity > 0)
            gravity = 0
    }
}
else
{
    vspeed = 0
    y = ystart
    state = 0
    if (gravity > 0)
        gravity = 0
}
