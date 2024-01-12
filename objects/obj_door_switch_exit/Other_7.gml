if (sprite_index == s_door_switch)
{
    image_speed = 0
    image_index = 2
}
else if (sprite_index == s_door_switch_close)
{
    sprite_index = s_door_switch
    image_speed = 0
    image_index = 0
    audio_play_sound(scr_snd_door_close(), 0, false)
}

