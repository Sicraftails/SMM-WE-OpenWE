if (state == 1 && jump == 0)
{
    alarm[11] = 60
    if instance_exists(obj_mario)
    {
        if ((obj_mario.x < x && direct == 1) || (obj_mario.x > x && direct == -1))
        {
            turning = 1
            fire_anim = 0
            alarm[0] = -1
            alarm[1] = -1
            alarm[2] = -1
            alarm[3] = -1
            alarm[4] = -1
        }
    }
}
else
    alarm[11] = 10

