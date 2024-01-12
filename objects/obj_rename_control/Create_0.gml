image_speed = 0
image_index = 0
size_x = 10
size_y = 12
index = 0
texto = "Renombrar el nivel"
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_cursor)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 20), (camera_get_view_y(view_get_camera(0)) + 23),-23, obj_rename_input)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 190),-23, obj_rename_button2)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 364), (camera_get_view_y(view_get_camera(0)) + 4),-23, obj_rename_close)
