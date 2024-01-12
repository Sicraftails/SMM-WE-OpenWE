if (global.levelguardabot != "" && press == 1 && image_index == 0 && obj_guardabot.active == 1)
{
    audio_play_sound(snd_delete_level, 0, false)
    image_index = 1
    alarm[1] = 6
}

