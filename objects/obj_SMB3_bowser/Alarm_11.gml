if (vspeed == 0)
{
    alarm[11] = 30
    if instance_exists(obj_mario)
    {
        if ((obj_mario.x < x && direct == 1) || (obj_mario.x > x && direct == -1))
        {
            stop_bowser = 1
            sprite_index = spr_SMB3_bowser_turning
            image_speed = 0.15
            image_index = 0
            alarm[0] = -1
            alarm[1] = -1
            alarm[2] = -1
        }
    }
}
else
    alarm[11] = 10

