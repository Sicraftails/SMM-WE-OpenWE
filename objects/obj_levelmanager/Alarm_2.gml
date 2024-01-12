if instance_exists(obj_mario)
{
    if (global.timer > 0 && editor == 0)
    {
        global.timer--
        alarm[2] = 60
        if (global.timer == 101)
            alarm[3] = 60
        else if (global.timer == 0)
            alarm[4] = 60
    }
}
else
{
    alarm[2] = 50
    exit
}

