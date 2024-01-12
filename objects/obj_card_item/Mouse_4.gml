if (instance_exists(obj_levelmanager) && instance_exists(obj_erase) && obj_erase.active == 0 && disabled == 0)
{
    if (obj_levelmanager.editor == 1 && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1) && obj_draw == obj_soplete_invert_global && instance_number(obj_pink_coin) == 5)
    {
        audio_stop_sound(snd_wrong)
        audio_play_sound(snd_wrong, 0, false)
    }
    else if (obj_levelmanager.editor == 1 && (obj_editormanager.expand_open == 0 || (obj_levelmanager.editor_sonidos == 1 && (!instance_exists(obj_edit_menu)))))
    {
        if (active == 0)
        {
            audio_play_sound(snd_select_tile, 0, false)
            obj_erase.active = 0
            image_index = 0
            if instance_exists(obj_bg_selection)
            {
                with (obj_bg_selection)
                    instance_destroy()
            }
            with (obj_card_item)
                active = 0
            active = 1
            global.select_resource = obj
            if (obj != obj_angrysun)
                cont = 1
        }
        else if (active == 1)
        {
            audio_stop_sound(snd_select_tile)
            audio_play_sound(snd_item_deselect, 0, false)
            with (obj_card_item)
                active = 0
            global.select_resource = obj_resource_empty
            active = 0
        }
    }
}
else
    audio_play_sound(snd_wrong, 0, false)
