var index = obj_panel_expand.header
var c_color = make_colour_rgb(89, 15, 16)
var posy = 3
draw_sprite_ext(sprite_index,index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
draw_set_font(global.font_google);
draw_set_color(c_color);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
switch index
{
	case 0:
	draw_text((x + (sprite_width / 2)), (y + posy + 1), scr_language(66))
	break
	case 1:
	draw_text((x + (sprite_width / 2)), (y + posy + 1), scr_language(67))
	break
	case 2:
	draw_text((x + (sprite_width / 2)), (y + posy + 1), scr_language(68))
	break
	case 3:
	draw_text((x + (sprite_width / 2)), (y + posy + 1), scr_language(69))
	break
}
draw_set_halign(fa_left);
draw_set_valign(fa_left);