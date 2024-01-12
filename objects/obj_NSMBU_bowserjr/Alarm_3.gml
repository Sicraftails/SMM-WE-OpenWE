if (jump == 0 && vspeed == 0 && fire == 0 && state == 1 && groundpount == 0)
{
    jump = 1
    groundpount_jump = 1
    hspeed = 0
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    alarm[8] = -1
    alarm[9] = -1
    alarm[11] = -1
}
else
    alarm[3] = 1
