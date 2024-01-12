image_speed = 0
instance_create((camera_get_view_x(view_get_camera(0)) + 350), (camera_get_view_y(view_get_camera(0)) + 19), obj_bt_close_water)
instance_create((camera_get_view_x(view_get_camera(0)) + 242), obj_card_bout.pos_y, obj_water_move)
instance_create((camera_get_view_x(view_get_camera(0)) + 222), obj_card_bout.pos_y_limit, obj_water_move_limit)

