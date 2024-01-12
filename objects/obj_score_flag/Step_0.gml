if instance_exists(obj_flagpole)
{
    if (y <= limit && ready == 0)
    {
        vspeed = 0
        y = limit
        alarm[1] = 120
        ready = 1
    }
}
else
    instance_destroy()

