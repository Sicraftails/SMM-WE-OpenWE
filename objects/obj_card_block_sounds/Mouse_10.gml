if ((obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1) && obj_levelmanager.editor == 1)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_pase_bloque_sonido)
        audio_play_sound(snd_pase_bloque_sonido, 0, false)
    }
    effect_hover = 1
}


