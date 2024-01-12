/// @description Create Mario's first spin jump projectile
if (holding == 0)
{
    if (global.powerup == 2 && instance_number(obj_fireball) < 2)
    {
        if instance_exists(obj_brickhelmet)
            var o_fire = obj_fireball_b
        else
            o_fire = obj_fireball
        with (instance_create((x + (8 * direct)), (y + 12), o_fire))
            hspeed = 4.5
    }
    else if (global.powerup == -38 && instance_number(obj_snowball) < 2)
    {
        with (instance_create((x + (8 * direct)), (y + 12), obj_snowball))
            hspeed = 2.6
    }
}
if (stompstyle == 1)
    alarm[8] = 10


