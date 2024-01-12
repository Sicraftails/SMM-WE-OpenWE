x = ((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left)
y = (camera_get_view_y(view_get_camera(0)) + 133)
image_index = active
if instance_exists(obj_panel_left)
    visible = obj_panel_left.visible

