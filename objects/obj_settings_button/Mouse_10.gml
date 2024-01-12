if (instance_exists(obj_cursor) && obj_cursor.active_menu == 0) and !instance_exists(obj_settings_panel)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_menu_settings_button_move)
        audio_play_sound(snd_menu_settings_button_move, 0, false)
    }
    effect_hover = 1
}


