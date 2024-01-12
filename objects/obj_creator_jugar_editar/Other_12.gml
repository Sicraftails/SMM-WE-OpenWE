obj_erase.active = 0
obj_cursor.image_index = 0
if (obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0)
{
    global.instance_deactivate = 0
    instance_activate_object(obj_parent_save)
    alarm[6] = 2
}
else if (obj_levelmanager.editor == 0)
{
    global.instance_deactivate = 0
    if instance_exists(obj_goalgate)
    {
        with (obj_goalgate)
            alarm[1] = -1
    }
    audio_stop_sound(bgm_smwclear)
    alarm[7] = 2
}
alarm[0] = 1
