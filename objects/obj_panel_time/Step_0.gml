x = ((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left)
y = (camera_get_view_y(view_get_camera(0)) + 109)
if (active == 1)
    image_index = 1
else
    image_index = 0
if instance_exists(obj_panel_left)
    visible = obj_panel_left.visible

