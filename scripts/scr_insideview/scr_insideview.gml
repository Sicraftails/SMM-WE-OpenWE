function scr_insideview() {
	if (mouse_y > camera_get_view_y(view_get_camera(0)) && mouse_y < ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) - 1) && mouse_x > camera_get_view_x(view_get_camera(0)) && mouse_x < ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 1))
	    return 1;
	else
	    return 0;



}
