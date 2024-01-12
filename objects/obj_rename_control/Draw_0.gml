if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_ext(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
draw_sprite_stretched(sprite_index, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
draw_set_font(global.font_google)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_halign(fa_left)

