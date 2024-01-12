if sprite_exists(back)
{
    gpu_set_blendenable(0)
    draw_sprite(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
    gpu_set_blendenable(1)
}

