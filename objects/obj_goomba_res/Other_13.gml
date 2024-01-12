audio_play_sound(scr_snd_powerup(), 0, false)
with (instance_create((x - 16), (y - 16), obj_goomba_b_res))
{
    paracaidas = other.paracaidas
    wings = other.wings
}
instance_destroy()

