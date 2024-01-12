if instance_exists(obj_water_move_limit)
{
    if (y <= obj_water_move_limit.y)
        draw_disabled = 0
    else
        draw_disabled = 1
    x = (camera_get_view_x(view_get_camera(0)) + 242)
}

