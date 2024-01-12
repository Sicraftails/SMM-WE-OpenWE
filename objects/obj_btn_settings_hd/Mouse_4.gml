audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.hd == 1)
{
    image_index = 1
    global.hd = 0
    text = text2
}
else
{
    image_index = 0
    global.hd = 1
    text = text1
}


