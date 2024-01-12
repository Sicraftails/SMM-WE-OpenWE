audio_play_sound(snd_miniwindow_seleccionar, 0, false)
with (instance_create(x, y, obj_cinta_res))
{
    size_x = other.size_x
    direct_t = other.direct_t
    color = other.color
}
instance_destroy()

