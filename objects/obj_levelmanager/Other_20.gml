s_pink_coins = scr_pink_coins()
draw_set_font(global.wdigits_NSMBU)
draw_set_colour(c_white)
draw_set_alpha(1)
if global.dsm = 0
{
	draw_sprite_ext(spr_NSMBU_coinhud, 0, (camera_get_view_x(view_get_camera(0)) + 13), (camera_get_view_y(view_get_camera(0)) + 10),0.5,0.5,0,c_white,1)
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 12), string_hash_to_newline(string_add_zeros(global.coins, 2)),0.5,0.5,0)
}
else
{
  
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 9), string_hash_to_newline(string_add_zeros(global.lives, 2)),0.5,0.5,0)
    draw_sprite_ext(spr_NSMBU_cont_lives, global.liveleves, (camera_get_view_x(view_get_camera(0)) + 47), (camera_get_view_y(view_get_camera(0)) + 7.5), 0.5, 0.5, 0, c_white, 1)
    draw_sprite_ext(spr_NSMBU_coinhud, 0, (camera_get_view_x(view_get_camera(0)) + 13), (camera_get_view_y(view_get_camera(0)) + 22),0.5,0.5,0,c_white,1)
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 29), (camera_get_view_y(view_get_camera(0)) + 25), string_hash_to_newline(string_add_zeros(global.coins, 2)),0.5,0.5,0)
}
if (global.condiciones == 1 && editor == 0){
	if global.dsm = 0
		draw_sprite(spr_cond_hud, global.condiciones_count, (camera_get_view_x(view_get_camera(0)) + 58), (camera_get_view_y(view_get_camera(0)) + 6))
	else
	    draw_sprite(spr_cond_hud, global.condiciones_count, (camera_get_view_x(view_get_camera(0)) + 108), (camera_get_view_y(view_get_camera(0)) + 6))
}
draw_set_font(global.wdigits_NSMBU_points)
draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 266), (camera_get_view_y(view_get_camera(0)) + 10), string_hash_to_newline(string_add_zeros(score, 9)),0.5,0.5,0)
draw_set_font(global.wdigits_NSMBU)
draw_sprite_ext(spr_NSMBU_timehud, global.apariencia, (camera_get_view_x(view_get_camera(0)) + 338), (camera_get_view_y(view_get_camera(0)) + 10), 0.5, 0.5, 0, c_white, 1)
draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 348), (camera_get_view_y(view_get_camera(0)) + 10), string_hash_to_newline(string_add_zeros(global.timer, 3)),0.5,0.5,0)
if (global.pink_coins_total != 0 && pink_coins_draw == 1)
    draw_sprite_ext(s_pink_coins, global.pink_coins, (camera_get_view_x(view_get_camera(0)) + 240), (camera_get_view_y(view_get_camera(0)) + 24), 0.5, 0.5, 0, c_white, 1)
draw_set_alpha(1)

