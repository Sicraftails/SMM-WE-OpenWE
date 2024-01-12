hspeed = 1
if (global.apariencia == 3)
    image_speed = 0.2
alarm[0] = 285
alarm[2] = 225
if instance_exists(primero)
{
    with (primero)
    {
        if (global.apariencia == 3)
            image_speed = 0.2
        hspeed = 1
        ready = 1
        alarm[0] = 297
        alarm[2] = 237
    }
}
if instance_exists(segundo)
{
    with (segundo)
    {
        if (global.apariencia == 3)
            image_speed = 0.2
        hspeed = 1
        ready = 1
        alarm[0] = 309
        alarm[2] = 249
    }
}
if instance_exists(tercero)
{
    with (tercero)
    {
        if (global.apariencia == 3)
            image_speed = 0.2
        hspeed = 1
        ready = 1
        alarm[0] = 321
        alarm[2] = 261
    }
}
ready = 1

