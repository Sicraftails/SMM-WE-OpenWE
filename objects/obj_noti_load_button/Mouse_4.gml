if (canpress == 1)
{
    if instance_exists(obj_creator_jugar_editar)
        audio_stop_sound(obj_creator_jugar_editar.music_editor)
    global.press_load = 1
    room_goto(rm_guardabot)
}

