event_inherited()
if (wings == 0 && paracaidas == 0)
{
    switch dist
    {
        case 0:
            if (y > (y_start + 48))
            {
                if (vspeed < -0.5)
                    vspeed = -0.5
                else
                    vspeed -= 0.015
            }
            else if (vspeed < 0)
                dist = 1
            break
        case 1:
            if (y < (y_start + 48))
            {
                if (vspeed > 0.5)
                    vspeed = 0.5
                else
                    vspeed += 0.015
            }
            else if (vspeed > 0)
                dist = 2
            break
        case 2:
            if (y > (y_start + 80))
            {
                if (vspeed < -0.5)
                    vspeed = -0.5
                else
                    vspeed -= 0.015
            }
            else if (vspeed < 0)
                dist = 3
            break
        case 3:
            if (y < (y_start + 48))
            {
                if (vspeed > 0.5)
                    vspeed = 0.5
                else
                    vspeed += 0.015
            }
            else if (vspeed > 0)
                dist = 4
            break
        case 4:
            if (y > (y_start + 64))
            {
                if (vspeed < -0.5)
                    vspeed = -0.5
                else
                    vspeed -= 0.015
            }
            else if (vspeed < 0)
                dist = 5
            break
        case 5:
            image_speed = 1
            if (vspeed < -2)
                vspeed = -2
            else
                vspeed -= 0.15
            break
    }

}
if (outside_view() && dist == 5)
    instance_destroy()

