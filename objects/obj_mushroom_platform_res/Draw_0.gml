if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, size_y, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, size_y, 0, c_white, 1)
for (p = 0; p < size_x; p++)
{
    if (p == 0)
        index = 0
    else if (p == (size_x - 1))
        index = 2
    else
        index = 1
    draw_sprite(sprite_index, index, (x_draw + (p * 16)), y_draw)
}
for (t = 1; t < size_y; t++)
{
    if (size_y == 3 || size_y == 5 || size_y == 7 || size_y == 9 || size_y == 7 || size_y == 11 || size_y == 13 || size_y == 15 || size_y == 17 || size_y == 19)
    {
        if (t == 1)
            draw_sprite(sprite_index, 3, ((x_draw + ((size_x * 16) / 2)) - 8), (y_draw + (t * 16)))
        else
            draw_sprite(sprite_index, 6, ((x_draw + ((size_x * 16) / 2)) - 8), (y_draw + (t * 16)))
    }
    else if (t == 1)
    {
        draw_sprite(sprite_index, 4, ((x_draw + ((size_x * 16) / 2)) - 16), (y_draw + (t * 16)))
        draw_sprite(sprite_index, 5, (x_draw + ((size_x * 16) / 2)), (y_draw + (t * 16)))
    }
    else
    {
        draw_sprite(sprite_index, 7, ((x_draw + ((size_x * 16) / 2)) - 16), (y_draw + (t * 16)))
        draw_sprite(sprite_index, 8, (x_draw + ((size_x * 16) / 2)), (y_draw + (t * 16)))
    }
}
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_semisolid, anim, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
    else if (mouse_up == 1)
        draw_sprite_ext(spr_move_semisolid, 0, (x + ((16 * size_x) - 16)), y, 1, 1, 0, c_white, 1)
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, size_y, 0, c_white, 1)

