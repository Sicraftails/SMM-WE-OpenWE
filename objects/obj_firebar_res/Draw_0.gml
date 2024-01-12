var xExtra, yExtra, xExtra2, yExtra2;
if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, image_yscale, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_sprite(spr_firebar_base, image_index, x_draw, y_draw)
for (h = 0; h < size_x; h++)
{
    xExtra = lengthdir_x((h * 8), color)
    yExtra = lengthdir_y((h * 8), color)
    draw_sprite_ext(spr_firebar, global.apariencia, ((x_draw + 8) + xExtra), ((y_draw + 8) + yExtra), 1, 1, 0, c_white, 1)
}
if (drag == 0)
{
    xExtra2 = lengthdir_x(((size_x - 1) * 8), color)
    yExtra2 = lengthdir_y(((size_x - 1) * 8), color)
    draw_sprite_ext(spr_button_change_firebar, direct_t, (x + 8), (y + 8), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_firebar_move, draw_p, ((x + 8) + xExtra2), ((y + 8) + yExtra2), 1, 1, 0, c_white, 1)
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

