if instance_exists(obj_mario)
{
    if (obj_mario.direct == 1)
        x = (obj_mario.x + 5)
    else
        x = (obj_mario.x - 21)
    y = (obj_mario.y + 12)
    if (obj_mario.slide != 1)
        instance_destroy()
}
else
    instance_destroy()

