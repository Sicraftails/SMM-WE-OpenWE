if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_hammer_throw)
    audio_play_sound(snd_NSMBU_hammer_throw, 0, false)
}
if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create((x + 3), (y - 8), obj_boomerang))
        {
            hspeed = 2
            parent = other.id
            direct = 1
        }
    }
    else if (obj_mario.x < x)
    {
        with (instance_create((x - 3), (y - 8), obj_boomerang))
        {
            hspeed = -2
            parent = other.id
            direct = -1
        }
    }
}
else
{
    with (instance_create((x + 3), (y - 8), obj_boomerang))
    {
        hspeed = (2 * other.direct)
        parent = other.id
        direct = 1
    }
}
trow = 2
if (global.apariencia != 3)
    alarm[6] = 5


