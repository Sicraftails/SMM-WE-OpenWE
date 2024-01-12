audio_play_sound(scr_snd_powerdown(), 0, false)
with (instance_create((x - 16), (y - 16), obj_boomboom_res))
{
    key = other.key
}
instance_destroy()

