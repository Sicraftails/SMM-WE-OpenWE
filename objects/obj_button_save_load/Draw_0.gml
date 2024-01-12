var ypos;
if global.idioma = 1
	ypos = 7
else
ypos = 0
draw_self()
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}
if (sprite_index == spr_button_save){
draw_set_font(global.font_google);
draw_set_color(c_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + 15, y + 4 + ypos , string_hash_to_newline(scr_language(104)))
}
else if (sprite_index == spr_button_load){
draw_set_font(global.font_google);
draw_set_color(c_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + 15, y + 1.5, string_hash_to_newline(scr_language(106)))
}


draw_set_halign(fa_left);
draw_set_valign(fa_left);