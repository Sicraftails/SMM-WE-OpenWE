if (global.bg_level == "mountain") 
&& (global.modo_noche == 1)
	image_index = global.meteoritos
else
	image_index = 2
x = ((camera_get_view_x(view_get_camera(0)) + 29) - obj_cursor.anim_left)
y = (camera_get_view_y(view_get_camera(0)) + 87)