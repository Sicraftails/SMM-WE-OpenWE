if (sprite_index == spr_back_button_white)
    draw_sprite(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 177))
else
{
    draw_sprite(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 137), (camera_get_view_y(view_get_camera(0)) + 182))
}

