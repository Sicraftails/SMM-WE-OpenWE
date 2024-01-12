audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.sm4j_style == 1)
{
    global.sm4j_style = 0
    text = scr_language(31)
    global.key_br = 0
}
else
{
    global.sm4j_style = 1
    text = scr_language(30)
}