var c_color,ypos;
if image_index = 0
c_color = make_color_rgb(145,145,145)
else
c_color = make_color_rgb(199,61,71)
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
draw_set_font(global.font_google);
draw_set_color(c_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + 15, y + 4 + ypos, string_hash_to_newline(scr_language(105)))
draw_set_halign(fa_left);
draw_set_valign(fa_left);

