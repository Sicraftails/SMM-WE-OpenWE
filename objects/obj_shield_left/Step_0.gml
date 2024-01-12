if instance_exists(obj_mario)
{
    if (global.powerup == -85 && obj_mario.isduck == 1)
    {
        x = round(obj_mario.x)
        y = round(obj_mario.y)
    }
    else
        instance_destroy()
}
else
    instance_destroy()


