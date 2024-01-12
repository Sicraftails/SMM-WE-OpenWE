if (instance_exists(obj_mario) && movenow == 0)
{
    if (obj_mario.x > (x + 8))
    {
        hspeed += velocity
        direct = 1
    }
    else if (obj_mario.x < (x - 8))
    {
        hspeed -= velocity
        direct = -1
    }
    if ((obj_mario.y + 20) > y)
        vspeed += velocity
    else if ((obj_mario.y + 16) < y)
        vspeed -= velocity
}
else
{
    speed = (max(0, (abs(speed) - 0.025)) * sign(speed))
    if (speed < velocity)
        speed = 0
}
movenowprev = movenow
if instance_exists(obj_mario)
{
    if (obj_mario.x > (x + 4))
    {
        if (obj_mario.direct == 1)
        {
            movenow = 0
            if (global.apariencia == 3 && move_sound == 1)
            {
                audio_stop_sound(snd_NSMBU_boo)
                audio_stop_sound(snd_NSMBU_boo_stop)
                if (choose(0, 1, 0, 1, 0, 1) == 1 && (!outside_view()))
                    audio_play_sound(snd_NSMBU_boo, 0, false)
                move_sound = 0
            }
        }
        else
        {
            movenow = 1
            if (global.apariencia == 3 && move_sound == 0)
            {
                audio_stop_sound(snd_NSMBU_boo)
                audio_stop_sound(snd_NSMBU_boo_stop)
                if (!outside_view())
                    audio_play_sound(snd_NSMBU_boo_stop, 0, false)
                move_sound = 1
            }
        }
    }
    else if (obj_mario.x < (x - 4))
    {
        if (obj_mario.direct == -1)
        {
            movenow = 0
            if (global.apariencia == 3 && move_sound == 1)
            {
                audio_stop_sound(snd_NSMBU_boo)
                audio_stop_sound(snd_NSMBU_boo_stop)
                if (choose(0, 1, 0, 1, 0, 1) == 1 && (!outside_view()))
                    audio_play_sound(snd_NSMBU_boo, 0, false)
                move_sound = 0
            }
        }
        else
        {
            movenow = 1
            if (global.apariencia == 3 && move_sound == 0)
            {
                audio_stop_sound(snd_NSMBU_boo)
                audio_stop_sound(snd_NSMBU_boo_stop)
                if (!outside_view())
                    audio_play_sound(snd_NSMBU_boo_stop, 0, false)
                move_sound = 1
            }
        }
    }
    else
    {
        movenow = 1
        if (global.apariencia == 3 && move_sound == 0)
        {
            audio_stop_sound(snd_NSMBU_boo)
            audio_stop_sound(snd_NSMBU_boo_stop)
            if (!outside_view())
                audio_play_sound(snd_NSMBU_boo_stop, 0, false)
            move_sound = 1
        }
    }
}
else
{
    movenow = 1
    if (global.apariencia == 3 && move_sound == 0)
    {
        audio_stop_sound(snd_NSMBU_boo)
        audio_stop_sound(snd_NSMBU_boo_stop)
        if (!outside_view())
            audio_play_sound(snd_NSMBU_boo_stop, 0, false)
        move_sound = 1
    }
}
if (global.apariencia == 3)
{
    if (movenow == 0)
    {
        sprite_index = sprite
        image_speed = 0.3
    }
    else
    {
        sprite_index = sprite_hidden
        if (image_index > 2.7)
        {
            image_speed = 0
            image_index = 2
        }
        else
            image_speed = 0.3
    }
}

