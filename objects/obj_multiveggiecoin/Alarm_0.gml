if (count == 0)
{
    instance_create(x, y, obj_smoke)
    instance_destroy()
}
else
{
    count--
    image_alpha = 0.6
    alarm[1] = 4
}

