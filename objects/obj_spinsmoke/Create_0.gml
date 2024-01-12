if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_smokespin
    image_speed = 0.25
}
else
{
    audio_play_sound(snd_spinstomp, 0, false)
    image_speed = 0.3
}
starx = 0
stary = 0
starstop = 0
alarm[0] = 1
alarm[1] = 16

