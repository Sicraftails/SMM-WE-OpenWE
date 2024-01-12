if (global.apariencia == 3)
    var scale = 1
else
    scale = 2
draw_sprite_ext(sprite_index, image_index, round(x), y, scale, scale, 0, c_white, 1)
if (global.dsm == 1)
{
	if global.apariencia = 3
	var posy = 5
	else
	var posy = 0
    draw_set_font(global.numbers_lives)
	draw_set_color(c_white)
    draw_sprite(spr_lives_x, 0, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 135-posy))
    draw_text((camera_get_view_x(view_get_camera(0))) + 205, (camera_get_view_y(view_get_camera(0)) + 119 - posy), string_hash_to_newline((string_add_zeros(global.lives, 2))))
}


