if (instance_exists(obj_cursor) && obj_cursor.active_menu == 0)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_paloma_move)
        audio_play_sound(snd_paloma_move, 0, false)
    }
    effect_hover = 1
}

