var posx;
if global.idioma = 1
posx = -7
else if global.idioma = 4
posx = 0
else if global.idioma = 3
posx = -2
else
posx = 4
draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_set_color(c_white)
draw_set_font(global.big_digits)
anim += 0.15
if (can_time == 1)
{
    draw_sprite(spr_cronometro_jump, anim, (camera_get_view_x(view_get_camera(0)) + 99), (camera_get_view_y(view_get_camera(0)) + 73))
    draw_text((camera_get_view_x(view_get_camera(0)) + 100), (camera_get_view_y(view_get_camera(0)) + 112), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
}
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text((x + (sprite_width/2) + 45 + posx - string_width(scr_language(83))) , y + 37, scr_language(83))
draw_set_halign(fa_left);
draw_set_valign(fa_left);

