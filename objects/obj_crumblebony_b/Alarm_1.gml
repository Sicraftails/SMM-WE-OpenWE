if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_drybones_armar)
    audio_play_sound(snd_NSMBU_drybones_armar, 0, false)
    sprite_index = spr_NSMBU_bonybeetle_b_desarmar
    image_speed = -0.25
    exit
}
if (shake < 10)
{
    x++
    shake++
    alarm[2] = 5
}
else
{
    alarm[3] = 8
    image_index = 0
}

