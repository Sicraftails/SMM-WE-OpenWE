if (obj_levelmanager.editor == 0 || outside_view())
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, image_yscale, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
for (v = 0; v < size_y; v++)
{
    if (v == 0)
        index = 0
    else
        index = 1
    draw_sprite(sprite_index, index, x_draw, (y_draw + (v * 16)))
}
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_lianas, anim, x, y, 1, 1, 0, c_white, 1)
    else if (draw_p == 2)
        draw_sprite_ext(spr_move_lianas, anim, x, ((y + (size_y * 16)) - 16), 1, 1, 0, c_white, 1)
    else if (mouse_up == 1)
    {
        draw_sprite_ext(spr_move_lianas, 0, x, y, 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_move_lianas, 0, x, ((y + (size_y * 16)) - 16), 1, 1, 0, c_white, 1)
    }
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

