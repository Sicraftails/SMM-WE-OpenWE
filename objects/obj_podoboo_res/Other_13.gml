audio_play_sound(scr_snd_powerup(), 0, false)
with (instance_create(x, y, obj_podoboo_b_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
    key = other.key
}
instance_destroy()

