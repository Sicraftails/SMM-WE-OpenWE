if (vspeed == 0)
{
    sprite_index = spr_SMB3_bowser_walk
    image_speed = 0
    image_index = 0
    stop_bowser = 1
    y_start = y
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    alarm[11] = -1
    alarm[4] = 20
    alarm[3] = choose(460, 660, 600, 460)
}
else
    alarm[3] = 2

