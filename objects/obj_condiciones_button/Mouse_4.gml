if (sprite_index == spr_condiciones_button_up && image_index == 0)
{
    audio_play_sound(snd_add_wings, 0, false)
    global.condiciones_count++
    if (global.condiciones_count == 3)
        image_index = 1
    else
    {
        with (obj_condiciones_button)
            image_index = 0
    }
}
else if (sprite_index == spr_condiciones_button_down && image_index == 0)
{
    audio_play_sound(snd_add_wings, 0, false)
    global.condiciones_count--
    if (global.condiciones_count == 0)
        image_index = 1
    else
    {
        with (obj_condiciones_button)
            image_index = 0
    }
}

