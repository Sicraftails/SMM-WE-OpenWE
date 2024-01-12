if (obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0 && (!instance_exists(obj_ventana)) && (!instance_exists(obj_apariencia)) && (!instance_exists(obj_bg_selection)) && obj_creator_jugar_editar.image_speed == 0)
{
    audio_play_sound(snd_select_sounds, 0, false)
    with (obj_card_item)
        active = 0
    global.select_resource = obj_resource_empty
    event_user(2)
}


