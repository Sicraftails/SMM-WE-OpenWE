if visible == 1
{
obj_panel_expand.value = 3
obj_header.page = 2
with obj_btn_header_parent{ alarm[0] = 1}
with (obj_panel_circle)
	instance_destroy()
with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 125), obj_panel_circle))
	{
		event_user(2)
        ready = 1
	}
audio_stop_sound(snd_palette_page2)
audio_play_sound(snd_palette_page2, 0, false)
}