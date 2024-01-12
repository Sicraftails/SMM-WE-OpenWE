if obj_panel_expand.header != 0 {
	if !instance_exists(obj_btn_header_1)
		instance_create((camera_get_view_x(view_get_camera(0))+scr_header(1)), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_1)
	}
if obj_panel_expand.header != 1{
	if !instance_exists(obj_btn_header_2)
		instance_create((camera_get_view_x(view_get_camera(0))+scr_header(2)), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_2)
	}
if obj_panel_expand.header != 2 {
	if !instance_exists(obj_btn_header_3)
		instance_create((camera_get_view_x(view_get_camera(0))+scr_header(3)), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_3)
	}
if obj_panel_expand.header != 3{
if !instance_exists(obj_btn_header_4)
		instance_create((camera_get_view_x(view_get_camera(0))+scr_header(4)), (camera_get_view_y(view_get_camera(0)) + 14), obj_btn_header_4)
}














