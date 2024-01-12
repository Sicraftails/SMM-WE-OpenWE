audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if instance_exists(obj_persistent)
{
    if (global.showfps == 0)
        global.showfps = 1
    else
        global.showfps = 0
    image_index = global.showfps
}

