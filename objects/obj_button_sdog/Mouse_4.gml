if (obj_levelmanager.editor == 1 && obj_editormanager.expand_open != 2 && obj_creator_jugar_editar.image_speed == 0)
{
    if (global.sounds_level == 0)
    {
        audio_play_sound(snd_add_trayectory, 0, false)
        global.sounds_level = 1
    }
    else
    {
        audio_play_sound(snd_colocar_objectos, 0, false)
        global.sounds_level = 0
    }
}

