if (convertirse == 1)
{
    if audio_is_playing(scr_snd_switchsong())
    {
        with (instance_create(x, y, obj_coin))
            convertirse = 0
        instance_destroy()
    }
}
else if (convertirse == 0)
{
    if (!audio_is_playing(scr_snd_switchsong()))
    {
        with (instance_create(x, y, obj_coin))
            convertirse = 1
        instance_destroy()
    }
}

