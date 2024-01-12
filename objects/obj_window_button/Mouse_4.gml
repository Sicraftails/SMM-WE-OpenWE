if (transform != 4)
    audio_play_sound(snd_cambio_objecto, 0, false)
if (image_index == 0)
{
    if (id_object != obj_lighting && instance_exists(id_object))
    {
        with (id_object)
        {
            transform = other.transform
            event_user(1)
        }
    }
}
with (obj_ventana)
    can_anim2 = 1


