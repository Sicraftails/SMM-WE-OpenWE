if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, 1, 0, c_white, 1)
for (h = 0; h < size_x; h++)
{
    if (h == 0)
        index = 0
    else if (h == (size_x - 1))
        index = 2
    else
        index = 1
    draw_sprite(sprite_index, index, (x_draw + (h * 16)), y_draw)
}
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_puentes, anim, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
    else if (mouse_up == 1)
        draw_sprite_ext(spr_move_puentes, 0, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

