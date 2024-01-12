if (sprite_index == s_doorlock_anim)
{
    sprite_index = s_doorlock_unlock
    image_index = 0
    image_speed = 0
    alarm[3] = 20
}
else if (sprite_index == s_doorlock_unlock)
{
    image_speed = 0
    image_index = 2
}
else if (sprite_index == s_doorlock_unlock_close)
{
    sprite_index = s_doorlock_unlock
    image_speed = 0
    image_index = 0
    audio_play_sound(scr_snd_door_close(), 0, false)
}

