if (press == 1 && image_index == 0 && obj_guardabot.active == 1)
{
    image_index = 1
    c_button = make_colour_rgb(253, 203, 0)
    audio_stop_sound(snd_guardabot)
    audio_play_sound(snd_aceptar, 0, false)
    alarm[1] = 6
}


