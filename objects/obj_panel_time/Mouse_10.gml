if (obj_editormanager.expand_open == 0)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_panel_izquierdo_move)
        audio_play_sound(snd_panel_izquierdo_move, 0, false)
    }
    effect_hover = 1
}

