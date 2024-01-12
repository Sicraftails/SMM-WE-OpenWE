if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_stretched_ext(spr_keybox, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)), c_white, 0.5);
draw_set_font(global.font_google)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text((camera_get_view_x(view_get_camera(0)) + (global.gw / 2)), ((camera_get_view_y(view_get_camera(0)) + global.gh) - 96), keyText)
draw_set_valign(fa_top)
draw_set_halign(fa_left)