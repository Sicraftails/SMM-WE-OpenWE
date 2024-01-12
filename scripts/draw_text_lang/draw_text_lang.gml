/// @description draw_text_lang(x, y, ES text, EN text, halign, valign, IT text)
/// @param x
/// @param  y
/// @param  ES text
/// @param  EN text
/// @param  halign
/// @param  valign
function draw_text_lang(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var vx = argument0
	var vy = argument1
	var es = argument2
	var en = argument3
	var ha = argument4
	var va = argument5
	var it = argument6
	
	draw_set_halign(ha)
	draw_set_valign(va)
	if global.idioma = 0
	draw_text_transformed(vx,vy,string_hash_to_newline(es),1,1,0)
	else if global.idioma = 1
	draw_text_transformed(vx,vy,string_hash_to_newline(en),1,1,0)
	else if global.idioma = 2
	draw_text_transformed(vx,vy,string_hash_to_newline(it),1,1,0)
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)



}
