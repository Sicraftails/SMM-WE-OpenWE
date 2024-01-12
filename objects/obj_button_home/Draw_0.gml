var posy, text, c_color;

switch (image_index)
{
    case 0:
        posy = 108;
        text = 12;
        break;
    case 1:
        posy = 108;
        text = 13;
        break;
    case 2:
        posy = 141;
        text = 14;
        break;
    case 3:
        posy = 174;
        text = 15;
        break;
}

if (sprite_index == spr_buttons_plays)
    c_color = make_color_rgb(89, 15, 16);
else
    c_color = make_color_rgb(253, 203, 0);

if (room == rm_title)
{
    draw_sprite(sprite_index, image_index, camera_get_view_x(view_get_camera(0)) + 112, camera_get_view_y(view_get_camera(0)) + 141);

    if (effect_hover == 1)
    {
        anim += 0.3;
        scr_anim_hover(camera_get_view_x(view_get_camera(0)) + 112, camera_get_view_y(view_get_camera(0)) + 141, anim, 2);
    }

    draw_set_font(global.font_google);
    draw_set_color(c_color);
    draw_set_halign(fa_center);
    draw_text(camera_get_view_x(view_get_camera(0)) + 112 + 81 + string_width(text), camera_get_view_y(view_get_camera(0)) + 141 + 7.75, scr_language(text));
}
else
{
    draw_self();

    if (effect_hover == 1)
    {
        anim += 0.3;
        scr_anim_hover(x, y, anim, 2);
    }

    draw_set_font(global.font_google);
    draw_set_color(c_color);
    draw_set_halign(fa_center);
	draw_text((x + (sprite_width / 2) + string_width(text)), y + 7.75, scr_language(text));
}
draw_set_halign(fa_left);