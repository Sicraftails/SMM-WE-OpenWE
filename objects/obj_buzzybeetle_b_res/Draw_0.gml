if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, 1, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite(p_sprite, global.apariencia, (x_draw + para_x), (y_draw - para_y))
if (inup == 1)
    draw_sprite_ext(sprite_index, image_index, x_draw, (y_draw + 32), 1, -1, 0, c_white, m_alpha)
else
    draw_sprite_ext(sprite_index, image_index, x_draw, y_draw, s_scalex, s_scaley, rotacion, c_white, m_alpha)
if (wings == 1)
    draw_sprite(w_sprite, global.apariencia, (x_draw + wings_x), (y_draw - wings_y))
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)

