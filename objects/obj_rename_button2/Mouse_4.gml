if (instance_exists(obj_rename_input) && obj_rename_input.new_texto != "" && obj_rename_input.new_texto != " " && (!instance_exists(obj_toast)))
{
    audio_play_sound(snd_aceptar, 0, false)
    image_index = 1
	file_rename(global.directorio+global.levelguardabot,global.directorio+obj_rename_input.new_texto+".swe")
	instance_destroy()
	instance_destroy(obj_rename_control)
	instance_destroy(obj_rename_input)
    press = 1
    mensaje = ""
    codigo = ""
	room_restart()
}
else if (obj_rename_input.new_texto == "")
{
    audio_play_sound(snd_wrong, 0, false)
    scr_toast(1, scr_language(94))
}

