var offsetx;
draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
if (instance_exists(obj_erase) && obj_erase.active == 0){
	if global.idioma = 1
		offsetx = (string_width(scr_language(23)) - 9)
	else if global.idioma = 2
		offsetx = (string_width(scr_language(23)) + 5)
	else if global.idioma = 3
		offsetx = 22
	else if global.idioma = 4
		offsetx = (string_width(scr_language(23)) + 4)
	else
		offsetx = (string_width(scr_language(23)) - 12.5)
    draw_sprite(spr_minitabs_en, 0, ((camera_get_view_x(view_get_camera(0)) + 60) - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 34) - obj_cursor.anim_top))
	draw_set_font(global.font_google);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(((camera_get_view_x(view_get_camera(0)) + 27) + sprite_get_width(spr_minitabs_en)/2 + offsetx - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 33) - obj_cursor.anim_top), scr_language(23))
}
draw_set_halign(fa_left);