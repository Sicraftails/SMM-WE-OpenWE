audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.controles_tactiles == 1)
{
    global.controles_tactiles = 0
    text = scr_language(31)
}
else
{
    global.controles_tactiles = 1
    text = scr_language(30)
}