if (obj_editormanager.expand_open == 0)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_panel_right_move)
        audio_play_sound(snd_panel_right_move, 0, false)
    }
    image_index = 1
    effect_hover = 1
}
