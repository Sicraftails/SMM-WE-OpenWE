if (state == 1 && turning == 0 && instance_exists(obj_mario) && (obj_mario.x > (x + 80) || obj_mario.x < (x - 80) || alt == 1))
{
    state = 3
    fire = 0
    alt = 0
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    alarm[3] = -1
    alarm[6] = -1
    alarm[7] = -1
    alarm[5] = 30
}
else
    alarm[4] = 2

