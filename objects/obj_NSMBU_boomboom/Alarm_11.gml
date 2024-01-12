if (hspeed != 0)
{
    switch increment
    {
        case 1:
            image_speed = 0.5
            break
        case 1.5:
            image_speed = 0.55
            break
        case 2:
            image_speed = 0.6
            break
    }

    alarm[11] = 30
}
else
    alarm[11] = 5

