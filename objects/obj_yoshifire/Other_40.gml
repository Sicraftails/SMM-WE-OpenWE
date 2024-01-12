if (x < (camera_get_view_x(view_get_camera(0)) - 32) || x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 32) || y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) + 32))
    instance_destroy()

