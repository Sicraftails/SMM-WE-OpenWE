if (sprite_index == spr_cronometro)
{
    image_speed = 0
    image_index = 4
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 106), (camera_get_view_y(view_get_camera(0)) + 57), obj_button_time))
        sprite_index = spr_button_time_up
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 106), (camera_get_view_y(view_get_camera(0)) + 130), obj_button_time))
        sprite_index = spr_button_time_down
    instance_create((camera_get_view_x(view_get_camera(0)) + 83), (camera_get_view_y(view_get_camera(0)) + 157), obj_button_ok)
    can_time = 1
}

