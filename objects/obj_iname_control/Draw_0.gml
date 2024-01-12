if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_ext(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
draw_sprite_ext(sprite_index, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text((x + 80), (y + 22), string_hash_to_newline(texto))
if instance_exists(obj_create_account)
	draw_text_ext_transformed_colour(x+80, y+142.5, obj_create_account.textos, 32, 128, 1, 1, image_angle, c_color, c_color, c_color, c_color, obj_create_account.yes);
draw_set_color(c_white)
draw_set_halign(fa_left)

