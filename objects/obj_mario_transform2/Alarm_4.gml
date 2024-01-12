if (cap != 0)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            visible = true
    }
}
if (c_powerup == 1)
    global.powerup = powerup_nuevo
if (instance_exists(obj_mario) && obj_mario.link_transform == 1)
    alarm[10] = 14
else
    alarm[10] = 7


