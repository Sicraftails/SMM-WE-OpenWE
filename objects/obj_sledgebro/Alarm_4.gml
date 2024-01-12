if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_hammer_throw)
    audio_play_sound(snd_NSMBU_hammer_throw, 0, false)
}
if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create(x, (y - 10), obj_brohammer))
        {
            if (global.apariencia == 3)
                sprite_index = spr_NSMBU_hammer2
            hspeed = 1.5
            direct = 1
        }
    }
    else if (obj_mario.x < x)
    {
        with (instance_create(x, (y - 10), obj_brohammer))
        {
            if (global.apariencia == 3)
                sprite_index = spr_NSMBU_hammer2
            hspeed = -1.5
            direct = -1
        }
    }
}
else
{
    with (instance_create(x, (y - 10), obj_brohammer))
    {
        if (global.apariencia == 3)
            sprite_index = spr_NSMBU_hammer2
        hspeed = -1.5
        direct = -1
    }
}
trow = 2
if (global.apariencia != 3)
    alarm[5] = 5

