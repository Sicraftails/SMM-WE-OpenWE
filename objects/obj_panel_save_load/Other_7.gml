if (sprite_index == spr_panel_save_load)
{
    image_speed = 0
    image_index = 4
    instance_create((camera_get_view_x(view_get_camera(0)) + 213), (camera_get_view_y(view_get_camera(0)) + 62), obj_button_save_load)
    instance_create((camera_get_view_x(view_get_camera(0)) + 213), (camera_get_view_y(view_get_camera(0)) + 105), obj_button_save_changes)
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 213), (camera_get_view_y(view_get_camera(0)) + 171), obj_button_save_load)){
        sprite_index = spr_button_load
		c_color = make_color_rgb(62,152,186)
	}
}

