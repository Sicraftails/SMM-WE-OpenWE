if ((obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1) && disabled == 0 && obj_levelmanager.editor == 1 && (!instance_exists(obj_edit_menu)))
{
	
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_pass_carditems)
        audio_play_sound(snd_pass_carditems, 0, false)
    }
    effect_hover = 1
    etop = 2
}

