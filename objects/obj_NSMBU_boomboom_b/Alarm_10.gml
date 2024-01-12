switch increment
{
    case 1:
        image_speed = 0.45
        break
    case 1.5:
        image_speed = 0.5
        break
    case 2:
        image_speed = 0.55
        break
}

stomp = 4
ready = 0
if (hspeed == 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        hspeed = -2
    else
        hspeed = 2
}
if (increment == 2)
    alarm[4] = 50
alarm[11] = 60

