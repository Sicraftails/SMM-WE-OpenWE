if (mebelow == -4)
{
    repeat (99)
    {
        if position_meeting(x, (bbox_top + a), obj_spring_land)
            a -= 16
        else
        {
            a += 16
            if (a < -16)
                a = -16
        }
    }
}
alarm[9] = 2

