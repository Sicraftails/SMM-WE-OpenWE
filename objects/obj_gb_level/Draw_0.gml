var nn_text,c_level;
c_level = make_color_rgb(29, 42, 67);
draw_self();
draw_set_font(global.font_google);
draw_set_color(c_level);
nn_text = scr_add3points(global.levelguardabot, 270, 52);
draw_text((camera_get_view_x(view_get_camera(0)) + 52), (camera_get_view_y(view_get_camera(0)) + 54), string_hash_to_newline(nn_text));
draw_text((camera_get_view_x(view_get_camera(0)) + 55), (camera_get_view_y(view_get_camera(0)) + 176), string_hash_to_newline(global.desc));
draw_set_color(c_etiquetas);
draw_text((camera_get_view_x(view_get_camera(0)) + 59), (camera_get_view_y(view_get_camera(0)) + 69), string_hash_to_newline(user));
/*
draw_text((camera_get_view_x(view_get_camera(0)) + 195), (camera_get_view_y(view_get_camera(0)) + 159), string_hash_to_newline(text[global.etiqueta1_temp]));
/**/
draw_text((camera_get_view_x(view_get_camera(0)) + 86), (camera_get_view_y(view_get_camera(0)) + 159), string_hash_to_newline(text_draw[global.etiqueta2_temp]));
draw_sprite_ext(spr_stamps_new, index_stamp, (camera_get_view_x(view_get_camera(0)) + 44), (camera_get_view_y(view_get_camera(0)) + 83), 0.5, 0.5, image_angle, image_blend, image_alpha);
if (global.condiciones == 0)
    draw_text((camera_get_view_x(view_get_camera(0)) + 53), (camera_get_view_y(view_get_camera(0)) + 160), string_hash_to_newline(text[15]));
else
    draw_sprite(spr_cond_hud, global.condiciones_count, (camera_get_view_x(view_get_camera(0)) + 53), (camera_get_view_y(view_get_camera(0)) + 160));
draw_sprite(spr_carteles, global.apariencia, (camera_get_view_x(view_get_camera(0)) + 300), (camera_get_view_y(view_get_camera(0)) + 84));
draw_sprite(spr_cards_entorno, entorno_image, (camera_get_view_x(view_get_camera(0)) + 302), (camera_get_view_y(view_get_camera(0)) + 111));
draw_sprite(spr_day_night_icon, modo_noche, (camera_get_view_x(view_get_camera(0)) + 330), (camera_get_view_y(view_get_camera(0)) + 121));
draw_sprite(spr_date_time_bg, 0, (camera_get_view_x(view_get_camera(0)) + 44), (camera_get_view_y(view_get_camera(0)) + 146));
draw_set_font(global.font_google);
draw_set_color(c_white);
draw_text((camera_get_view_x(view_get_camera(0)) + 47), (camera_get_view_y(view_get_camera(0)) + 144), string_hash_to_newline(fecha));
draw_text((camera_get_view_x(view_get_camera(0)) + 152), (camera_get_view_y(view_get_camera(0)) + 144), string_hash_to_newline(hora));

