if (wings == 0)
{
    audio_play_sound(snd_agregar_wings, 0, false)
    wings = 1
}
else
{
    audio_play_sound(snd_remove_wings, 0, false)
    with (instance_create((x + wings_x), ((y - wings_y) + 16), obj_wings_dead))
        direct = -1
    wings = 0
}

