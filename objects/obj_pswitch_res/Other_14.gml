if inup != 1{
if (wings == 0)
{
    audio_play_sound(snd_agregar_wings, 0, false)
    wings = 1
}
else
{
    audio_play_sound(snd_remove_wings, 0, false)
    with (instance_create((x + 17), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 3), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
    wings = 0
}
}