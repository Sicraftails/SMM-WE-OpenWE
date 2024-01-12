if (obj_levelmanager.editor == 0 || outside_view())
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, 1, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, (x_draw + 32.5), (y_draw + 32.5), s_scalex, s_scaley, 0, c_white, 1)
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (drag == 0)
    draw_sprite_ext(spr_button_change_thwomp, 0, (x + 32.5), (y + 32.5), 1, 1, rotacion, c_white, 1)

