if (cap != 0)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            visible = false
    }
}
if (c_powerup == 1)
    global.powerup = powerup_actual
alarm[4] = 7

