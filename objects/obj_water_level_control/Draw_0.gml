var offsetx,texto;
draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)

	if global.idioma = 1
		offsetx = (string_width(scr_language(154)) - 28)
	else if global.idioma = 2
		offsetx = (string_width(scr_language(154)) - 30)
	else if global.idioma = 3
		offsetx = 1
	else if global.idioma = 4
		offsetx = (string_width(scr_language(154)) - 27)
	else
		offsetx = (string_width(scr_language(154)) - 30)
if (global.bg_level == "forest" || global.bg_level == "beach"){
    draw_sprite(spr_minitabs_en, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
	texto = 154
}
else{
    draw_sprite(spr_minitabs_en, 2, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
	texto = 155
}
	draw_set_font(global.font_google);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(((camera_get_view_x(view_get_camera(0))) + sprite_get_width(spr_minitabs_en)/2 - offsetx), ((camera_get_view_y(view_get_camera(0)) - 1)), scr_language(texto))
draw_set_halign(fa_left);