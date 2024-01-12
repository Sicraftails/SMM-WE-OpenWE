if (pmeter > 5)
{
    if ((instance_exists(obj_mario) && abs(obj_mario.hspeed) > (2.1 + abs((1 * instance_number(obj_invincibility)))) && obj_mario.state < 2 && global.apariencia != 3) || (instance_exists(obj_mario) && abs(obj_mario.hspeed) > (1.5 + abs((1 * instance_number(obj_invincibility)))) && obj_mario.state < 2 && global.apariencia == 3) || (instance_exists(obj_mario) && obj_mario.stompstyle == 1 && obj_mario.canfly == 1 && abs(obj_mario.hspeed) > (2.1 + abs((1 * instance_number(obj_invincibility))))) || (instance_exists(obj_mario) && global.apariencia == 3 && abs(obj_mario.hspeed) > (1.8 + abs((1 * instance_number(obj_invincibility)))) && obj_mario.state == 2))
        alarm[8] = 100
    else
    {
        pmeter = 5
        alarm[7] = 15
    }
}

