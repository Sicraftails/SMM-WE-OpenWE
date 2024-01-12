if instance_exists(obj_mario)
{
    if (global.powerup == -85 && obj_mario.arrow > 0)
    {
        x = round(obj_mario.x)
        y = round(obj_mario.y)
        obj_mario.visible = false
    }
    else
        instance_destroy()
}
else
    instance_destroy()


