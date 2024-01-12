if (s_index == 0)
{
    if (id_object != obj_lighting && instance_exists(id_object))
    {
        with (id_object)
            event_user(3)
    }
}
else if (s_index == 1)
{
    if (id_object != obj_lighting && instance_exists(id_object))
    {
        with (id_object)
            event_user(4)
    }
}
else if (s_index == 2)
{
    if (id_object != obj_lighting && instance_exists(id_object))
    {
        with (id_object)
        {
            if (paracaidas == 0)
            {
                audio_play_sound(snd_add_paracaidas, 0, false)
                paracaidas = 1
            }
            else
            {
                audio_play_sound(snd_remove_wings, 0, false)
                instance_create((x + para_x), (y - para_y), obj_paracaidas_dead)
                paracaidas = 0
            }
        }
    }
}
else if (s_index == 3)
{
    if (id_object != obj_lighting && instance_exists(id_object))
    {
        with (id_object)
            event_user(5)
    }
}
with (obj_ventana)
    can_anim2 = 1

