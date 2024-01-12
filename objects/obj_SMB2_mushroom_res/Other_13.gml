audio_play_sound(scr_snd_powerdown(), 0, false)
with (instance_create((x - 16), (y - 16), obj_mushroom_res))
{
    s_contorno_1 = other.wings
    s_paracaidas = other.paracaidas
}
instance_destroy()

