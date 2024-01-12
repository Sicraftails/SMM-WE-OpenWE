if instance_exists(obj_mario)
{
    if ((direct_t == 0 && obj_mario.x > (x - 32) && obj_mario.x < (x + 32) && obj_mario.y >= (y - 64) && obj_mario.y <= (y - 16)) || (direct_t == 1 && obj_mario.x < (x + 32) && obj_mario.y >= (y - 32) && obj_mario.y <= (y - 32)) || (direct_t == 2 && obj_mario.x > (x - 16) && obj_mario.x < (x + 16) && obj_mario.y >= (y - 64) && obj_mario.y <= (y - 16)) || (direct_t == 3 && obj_mario.x > (x - 32) && obj_mario.y >= (y - 32) && obj_mario.y <= (y - 32)))
    {
        alarm[0] = 1
        exit
    }
    switch direct_t
    {
        case 0:
            vspeed = -1
            break
        case 1:
            hspeed = 1
            break
        case 2:
            vspeed = 1
            break
        case 3:
            hspeed = -1
            break
    }

    alarm[1] = 32
    alarm[5] = 16
}
else
{
    alarm[0] = 1
    exit
}

