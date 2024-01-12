if (instance_exists(obj_flagpole))
{
    if (global.apariencia == 3)
    {
        if (y > (obj_flagpole.y + 126))
        {
            vspeed = 0
            y = (obj_flagpole.y + 126)
            if (ready == 0)
            {
                ready = 1
                alarm[1] = 10
            }
        }
    }
    else if (y > (obj_flagpole.y + 144))
    {
        vspeed = 0
        y = (obj_flagpole.y + 144)
        ready = 1
    }
}
if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    visible = true
else
    visible = false
