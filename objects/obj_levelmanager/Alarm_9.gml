if ((instance_exists(obj_mario) && abs(obj_mario.hspeed) <= (2.1 + abs((1 * instance_number(obj_invincibility)))) && obj_mario.skidnow == 0 && obj_mario.state < 2 && global.apariencia != 3) || (instance_exists(obj_mario) && abs(obj_mario.hspeed) <= (1.5 + abs((1 * instance_number(obj_invincibility)))) && obj_mario.skidnow == 0 && obj_mario.state < 2 && global.apariencia == 3) || (instance_exists(obj_mario) && obj_mario.stompstyle == 1 && obj_mario.canfly == 1 && abs(obj_mario.hspeed) <= (2.1 + abs((1 * instance_number(obj_invincibility))))))
{
    audio_stop_sound(snd_pmeter)
    pmeter = 5
    alarm[7] = 15
}
else if (pmeter > 5)
{
    if (pmeter == 6)
        pmeter = 7
    else
        pmeter = 6
    alarm[9] = 7
}

