if (visible == true)
{
    audio_stop_sound(snd_aceptar)
    audio_play_sound(snd_aceptar, 0, false)
	if instance_exists(obj_settings_panel)
	{
		global.keymod = 0
		instance_destroy(obj_settings_controls)
		with (obj_settings_panel)
			event_user(0)
    }
    if instance_exists(obj_gb_button)
    {
        with (obj_gb_button)
            alarm[0] = 15
    }
    if instance_exists(obj_menu_editor_ext)
    {
        with (obj_menu_editor_ext)
            alarm[0] = 15
    }
    if instance_exists(obj_guardabot)
    {
        with (obj_guardabot)
            can_anim = 1
    }
    with (obj_persistent)
        event_user(7)
}

