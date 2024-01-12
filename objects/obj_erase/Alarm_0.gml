if (image_index == 0)
{
    image_index = 1
    alarm[0] = 25
    audio_stop_sound(snd_jump_erase)
    audio_play_sound(snd_jump_erase_reverse, 0, false)
}
else
{
    image_index = 0
    alarm[0] = 25
    audio_stop_sound(snd_jump_erase_reverse)
    audio_play_sound(snd_jump_erase, 0, false)
}
