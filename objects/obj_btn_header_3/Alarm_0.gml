if  obj_panel_expand.header = 0{
	x = camera_get_view_x(view_get_camera(0)) + 288
	visible = 1
}
else if obj_panel_expand.header = 1
{
	x = camera_get_view_x(view_get_camera(0)) + 260
	visible = 1
}
else if obj_panel_expand.header = 2
{
	visible = 0
}
else
{
	x = camera_get_view_x(view_get_camera(0)) + 105
	visible = 1
}















