audio_play_sound(scr_snd_powerup(), 0, false)
with (instance_create((x - 16), (y - 16), obj_koopa_b_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
    key = other.key
}
instance_destroy()

