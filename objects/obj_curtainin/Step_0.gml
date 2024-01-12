event_user(0)
if (!surface_exists(surf))
    surf = surface_create(camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
else
{
    surface_set_target(surf)
    draw_clear((c_white - surf_colour))
    gpu_set_blendmode(bm_subtract)
    draw_circle_colour_precise((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), scale, 16777215, 16777215, 0, 64)
    gpu_set_blendmode(bm_normal)
    surface_reset_target()
}

