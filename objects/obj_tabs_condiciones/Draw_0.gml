if (disabled == 1)
{
    image_index = 2
	c_color = make_color_rgb(160, 160, 160);
}
else if (selected == 1)
{
    image_index = 1
    c_color = make_color_rgb(255, 255, 255);
}
else
{
    image_index = 0
    c_color = make_color_rgb(89, 15, 16);
}
draw_self();
if (effect_hover == 1 and disabled == 0)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 1)
}
draw_set_font(global.font_google);
draw_set_color(c_color);
draw_set_halign(fa_center);
draw_text((x + (sprite_width / 2)), y, string_hash_to_newline(text))
draw_set_halign(fa_left);