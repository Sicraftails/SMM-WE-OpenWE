var title,author,likes,intentos,tag1,tag2,record;
var cond_cont = global.condiciones_count
if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_stretched(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 239, 216)
draw_sprite_stretched(sprite_index, 0, x, y, 145, 216)
draw_sprite(spr_pausa_text, global.idioma, (camera_get_view_x(view_get_camera(0)) + 260), (camera_get_view_y(view_get_camera(0)) + 9))
if (global.nm_play != 0)
    var icon_pausa = 1
else
    icon_pausa = 0
draw_sprite(spr_pausa_icons, icon_pausa, (camera_get_view_x(view_get_camera(0)) + 5), (camera_get_view_y(view_get_camera(0)) + 10))
draw_sprite(spr_pausa_icons, 2, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 65))
draw_sprite(spr_pausaicons, 0, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 88))
draw_sprite(spr_pausaicons, 1, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 103))
draw_sprite(spr_pausaicons, 3, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 118))
draw_sprite(spr_pausaicons, 3, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 133))
draw_sprite(spr_pausaicons, 5, (camera_get_view_x(view_get_camera(0)) + 12), (camera_get_view_y(view_get_camera(0)) + 148))
draw_sprite(spr_user_icon, 0, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 46))
draw_sprite_stretched(spr_pausa_line, 0, (camera_get_view_x(view_get_camera(0)) + 7), (camera_get_view_y(view_get_camera(0)) + 22), 224, 1)
draw_sprite_stretched(spr_pausa_line, 0, (camera_get_view_x(view_get_camera(0)) + 7), (camera_get_view_y(view_get_camera(0)) + 60), 224, 1)
draw_sprite_stretched(spr_pausa_line, 0, (camera_get_view_x(view_get_camera(0)) + 7), (camera_get_view_y(view_get_camera(0)) + 80), 224, 1)
draw_set_font(global.font_google)
draw_set_color(c_white)
if (global.nm_play != 0)
{
	title = scr_language(14)
    var texto = global.level_name
    if (string_width(string_hash_to_newline(texto)) > 205)
    {
        var copy = string_copy(texto, 0, 40)
        var level = (copy + "...")
    }
    else
        level = texto
	author = global.author
	likes = global.number_like
	intentos = global.intentos
    tag1 = global.tag1_pub
    tag2 = global.tag2_pub
	record = global.record
}
else
{
	title = scr_language(15)
    texto = global.levelguardabot
    level = scr_add3points(texto, 205, 40)  
	author = global.user_gb
	likes = "--"
	intentos = "--"
    tag1 = global.tag1_pub
    tag2 = global.tag2_pub
	record = "--"
}
draw_text((camera_get_view_x(view_get_camera(0)) + 22), (camera_get_view_y(view_get_camera(0)) + 8), string_hash_to_newline(title))
draw_text((camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 26), string_hash_to_newline(level))
draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 45), string_hash_to_newline(author))
draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 85), string_hash_to_newline(likes))
draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 100), string_hash_to_newline(intentos))
draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 114), string_hash_to_newline(tag1))
draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 129), string_hash_to_newline(tag2))
if record == "0"
	draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 145), string_hash_to_newline("--"))
else
    draw_text(((x - 195) - round((string_width(string_hash_to_newline((record))) / 2))), (y + 145), string_hash_to_newline((record)))
if cond_cont != 0
	draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 63), string_hash_to_newline(textcnd[cond_cont]))
else
	draw_text((camera_get_view_x(view_get_camera(0)) + 26), (camera_get_view_y(view_get_camera(0)) + 63), string_hash_to_newline("--"))	