audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (disabled = 1)
{
if (global.effect_star == 1)
{
    global.effect_star = 0
    text = scr_language(31)
}
else
{
    global.effect_star = 1
    text = scr_language(30)
}
}
