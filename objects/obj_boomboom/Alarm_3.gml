if (increment == 1)
{
    ready = 1
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        hspeed = -3
    else
        hspeed = 3
    alarm[1] = -1
    alarm[9] = -1
    alarm[10] = -1
    alarm[11] = -1
    alarm[4] = -1
    alarm[2] = 1
}
else if (increment == 1.5)
{
    if (vspeed == 0)
    {
        alarm[1] = -1
        alarm[9] = -1
        alarm[10] = -1
        alarm[11] = -1
        sprite_index = s_boomboom3
        image_speed = 0
        image_index = 0
        hspeed = 0
        alarm[4] = 20
    }
    else
        alarm[3] = 60
}

