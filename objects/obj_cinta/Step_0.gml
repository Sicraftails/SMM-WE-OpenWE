if (!audio_is_playing(scr_snd_switchsong()))
{
    if (velocidad == 0)
    {
        if (direct_t == 1)
            image_speed = -1
        else
            image_speed = 1
    }
    else if (direct_t == 1)
        image_speed = -2
    else
        image_speed = 2
}
else
    image_speed = 0
