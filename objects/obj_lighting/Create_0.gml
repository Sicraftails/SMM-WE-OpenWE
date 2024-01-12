surf = surface_create(camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
surface_reset_target()

