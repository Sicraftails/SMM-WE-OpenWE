if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_fireball)
    audio_play_sound(snd_NSMBU_fireball, 0, false)
}
if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create((x + 3), (y - 2), obj_fireball_bro))
            hspeed = 2.5
    }
    else if (obj_mario.x < x)
    {
        with (instance_create((x - 3), (y - 2), obj_fireball_bro))
            hspeed = -2.5
    }
}
else
{
    with (instance_create((x + 3), (y - 2), obj_fireball_bro))
        hspeed = (2.5 * other.direct)
}
trow = 2
if (global.apariencia != 3)
    alarm[6] = 5


