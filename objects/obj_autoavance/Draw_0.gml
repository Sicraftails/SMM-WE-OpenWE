var posx;
if global.idioma = 1
posx = 7
else if global.idioma = 0
posx = 2
else if global.idioma = 2
posx = 20
else if global.idioma = 3
posx = 28
else
posx = 2
draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text((x + (sprite_width/2) + 45 + posx - string_width(scr_language(82))) , y + 37, scr_language(82))
draw_set_halign(fa_left);
draw_set_valign(fa_left);

