if instance_exists(obj_mario)
{
    if (obj_mario.x < x && hspeed > 0)
    {
        hspeed = -1
        alarm[0] = 40
    }
    else if (obj_mario.x > x && hspeed < 0)
    {
        hspeed = 1
        alarm[0] = 40
    }
    else
        alarm[0] = 40
}
else
    alarm[0] = 1
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.27
speed = 1
state = 2
for (i = 1; i < seg; i++)
{
    if instance_exists(mybody[i])
    {
        if (global.apariencia == 3)
            mybody[i].image_speed = 0.5
        else
            mybody[i].image_speed = 0.27
    }
}

