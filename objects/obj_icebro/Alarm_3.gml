if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_snowball)
    audio_play_sound(snd_NSMBU_snowball, 0, false)
}
if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create((x + 3), (y - 2), obj_snowball_bro))
            hspeed = 2.4
    }
    else if (obj_mario.x < x)
    {
        with (instance_create((x - 3), (y - 2), obj_snowball_bro))
            hspeed = -2.4
    }
}
else
{
    with (instance_create((x + 3), (y - 2), obj_snowball_bro))
        hspeed = (2.4 * other.direct)
}
trow = 2
if (global.apariencia != 3)
    alarm[6] = 5


