with (instance_create((camera_get_view_x(view_get_camera(0)) + 60), (camera_get_view_y(view_get_camera(0)) + 41), obj_settings_controls))
{
    xx = 60
    yy = 41
    key = 2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 200), (camera_get_view_y(view_get_camera(0)) + 41), obj_settings_controls))
{
    xx = 200
    yy = 41
    key = 3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 60), (camera_get_view_y(view_get_camera(0)) + 85), obj_settings_controls))
{
    xx = 60
    yy = 85
    key = 4
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 200), (camera_get_view_y(view_get_camera(0)) + 85), obj_settings_controls))
{
    xx = 200
    yy = 85
    key = 5
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 160), obj_settings_controls))
{
    xx = 136
    yy = 160
    key = 6
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 60), (camera_get_view_y(view_get_camera(0)) + 124), obj_settings_controls))
{
    xx = 60
    yy = 124
    key = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 200), (camera_get_view_y(view_get_camera(0)) + 124), obj_settings_controls))
{
    xx = 200
    yy = 124
    key = 0
}
	global.keymod = 1
	instance_create((camera_get_view_x(view_get_camera(0)) + 263), (camera_get_view_y(view_get_camera(0)) + 186), obj_button_settings_close2)
	instance_destroy(obj_settings_custom)
    instance_destroy(obj_button_settings_idioma)
    instance_destroy(obj_button_settings_sombras)
    instance_destroy(obj_selecting_player)
    instance_destroy(obj_selecting_fps)
    instance_destroy(obj_button_creditos)
	instance_destroy(obj_vsync)
    instance_destroy(obj_button_settings_estrella)
    instance_destroy(obj_button_settings_controls)
    instance_destroy(obj_button_settings_sm4j)
    instance_destroy(obj_window_select)
    instance_destroy(obj_st_slider)
	instance_destroy(obj_button_settings_close)