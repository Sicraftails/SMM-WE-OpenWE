if instance_exists(obj_mario)
{
    if (global.powerup == -85 && obj_mario.down_atack > 0)
    {
        x = round(obj_mario.x)
        y = (round(obj_mario.y) + obj_mario.vspeed)
        obj_mario.visible = false
        event_user(0)
    }
    else
        instance_destroy()
}
else
    instance_destroy()


