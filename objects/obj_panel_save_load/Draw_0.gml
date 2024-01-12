var vx;
if global.idioma = 0
vx = 10
else if global.idioma = 2
vx = 14
else if global.idioma = 3
vx = 6
else 
vx = 2
draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 198), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text(x + 55-vx, y + 37, scr_language(85))	
draw_set_halign(fa_left);
draw_set_valign(fa_left);

