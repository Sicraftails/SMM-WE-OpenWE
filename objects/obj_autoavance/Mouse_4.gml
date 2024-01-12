if (image_speed == 0 && image_index == 4 && mouse_x > (camera_get_view_x(view_get_camera(0)) + 201) && mouse_x < (camera_get_view_x(view_get_camera(0)) + 212) && mouse_y > (camera_get_view_y(view_get_camera(0)) + 40) && mouse_y < (camera_get_view_y(view_get_camera(0)) + 50))
{
    audio_play_sound(snd_panel_close, 0, false)
    event_user(0)
}


