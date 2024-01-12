var offsetx;
if instance_exists(obj_erase)
{
    if (obj_erase.active == 1 && zoom == 0)
        draw_sprite(spr_bg_goma_de_borrar, anim_goma, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
}
draw_sprite_ext(spr_panel_right, 0, (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 35) + obj_cursor.anim_right), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_banner, 0, camera_get_view_x(view_get_camera(0)), (camera_get_view_y(view_get_camera(0)) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)

if (instance_exists(obj_erase) && obj_erase.active == 1 && zoom == 0){
	if global.idioma = 1
		offsetx = string_width(scr_language(156))
	else if global.idioma = 2
		offsetx = (string_width(scr_language(156)) - 23)
	else if global.idioma = 3
		offsetx = 16
	else if global.idioma = 4
		offsetx = (string_width(scr_language(156)) - 12)
	else
		offsetx = 0
    draw_sprite(spr_minitabs_en, 3, ((camera_get_view_x(view_get_camera(0)) + 60) - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 34) - obj_cursor.anim_top))
	draw_set_font(global.font_google);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(((camera_get_view_x(view_get_camera(0)) + 27) + sprite_get_width(spr_minitabs_en)/2 + offsetx - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 33) - obj_cursor.anim_top), scr_language(156))
}
draw_set_halign(fa_left);