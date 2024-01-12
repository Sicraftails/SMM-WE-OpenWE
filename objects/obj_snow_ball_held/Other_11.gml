audio_stop_sound(scr_snd_kick())
audio_play_sound(scr_snd_kick(), 0, false)
if (sprite_height <= 30)
{
    with (instance_create(x, y, obj_snow_ball))
        alarm[2] = 4
}
else
{
    with (instance_create(x, y, obj_snow_ball_b))
        alarm[2] = 4
}
instance_destroy()
