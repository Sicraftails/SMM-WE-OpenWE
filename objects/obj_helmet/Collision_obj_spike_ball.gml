if (other.bbox_bottom < ((bbox_top - vvelocidad) + 8) && other.vspeed >= 0)
{
    if (object_index == obj_helmet_spiny)
        audio_play_sound(snd_helmet_spiny, 0, false)
    else
    {
        audio_stop_sound(snd_helmet)
        audio_play_sound(snd_helmet, 0, false)
        with (instance_create(x, y, obj_smoke))
            sprite_index = spr_starhelmet
    }
    if (variable_instance_exists(other.object_index, "paracaidas") && other.paracaidas == 1)
        other.paracaidas = 0
    other.fisica = 1
    other.ready = 1
    if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -1)
}
