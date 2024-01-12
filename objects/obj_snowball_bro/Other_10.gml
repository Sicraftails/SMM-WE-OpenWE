if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_snowball_break)
    audio_play_sound(snd_NSMBU_snowball_break, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_NSMBU_smoke_snowball
}
else
    instance_create((x - 8), y, obj_smoke)
instance_destroy()


