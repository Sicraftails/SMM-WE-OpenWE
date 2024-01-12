if (value != global.autoavance)
{
    audio_stop_sound(snd_aceptar)
    audio_play_sound(snd_aceptar, 0, false)
    global.autoavance = value
    with (obj_button_autoavance)
    {
        image_index = 0
        c_button = make_colour_rgb(89, 15, 16)
    }
    image_index = 1
    c_button = 16777215
}
else
{
    audio_stop_sound(snd_wrong)
    audio_play_sound(snd_wrong, 0, false)
}


