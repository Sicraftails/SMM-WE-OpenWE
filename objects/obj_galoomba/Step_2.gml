event_inherited()
if (wings == 1 && paracaidas == 0 && instance_exists(obj_mario))
{
    if (jumping > 0)
    {
        if (jumping > 3)
        {
            if (global.apariencia == 3)
                anim += 1
            else
                anim += 0.25
        }
        else if (global.apariencia == 3)
            anim += 0.5
        else
            anim += 0.15
    }
    else
        anim = 0
}

