if  obj_panel_expand.header = 0{
	x = camera_get_view_x(view_get_camera(0)) + 260
	visible = 1
}
else if obj_panel_expand.header = 1
	visible = 0
else if obj_panel_expand.header = 2 {
	x = camera_get_view_x(view_get_camera(0)) + 105
	visible = 1
}
else {
	x = camera_get_view_x(view_get_camera(0)) + 77
	visible = 1
}















