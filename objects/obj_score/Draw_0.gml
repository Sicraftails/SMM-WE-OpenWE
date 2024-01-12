if (y > (camera_get_view_y(view_get_camera(0)) + 32))
{
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), scale, scale, 0, c_white, 1)
    if (fade > 0)
        draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, fade)
}
else
{
    draw_sprite_ext(sprite_index, image_index, round(x), round((camera_get_view_y(view_get_camera(0)) + 32)), scale, scale, 0, c_white, 1)
    if (fade > 0)
        draw_sprite_ext(sprite_index, image_index, round(x), round((camera_get_view_y(view_get_camera(0)) + 32)), 1, 1, 0, c_white, fade)
}

