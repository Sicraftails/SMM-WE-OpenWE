if (global.my1 == 0)
    instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 12), obj_iname_control)
else
    room_goto(rm_title)