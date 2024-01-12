if (stretch == 2)
{
    if (image_index < 1)
    {
        if (global.apariencia == 3)
        {
            sprite_index = spr_NSMBU_boo_stretch
            image_speed = 0.5
            audio_stop_sound(snd_NSMBU_boo)
            audio_play_sound(snd_NSMBU_boo, 0, false)
        }
        else
        {
            sprite_index = spr_boo_stretch
            image_speed = 0
            image_index = global.apariencia
        }
        stomp = 2
        stretch = 0
        hspeed = (1 * direct)
        alarm[0] = 180
    }
}
if (inup > 0 && stretch == 0)
{
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
    event_user(3)
}

