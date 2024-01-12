if (active == 0)
    x = (camera_get_view_x(view_get_camera(0)) + 356)
else
    x = camera_get_view_x(view_get_camera(0))
y = (camera_get_view_y(view_get_camera(0)) - obj_cursor.anim_top)

