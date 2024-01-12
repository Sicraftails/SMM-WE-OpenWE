if (obj_levelmanager.editor == 0 || outside_view())
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, 1, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (global.apariencia != 3){
draw_sprite_custom_origin(sprite_index, image_index, x_draw, y_draw, 13, -5, s_scalex*direct, s_scaley, rotacion, c_white, m_alpha)
}
else{
draw_sprite_custom_origin(sprite_index, image_index, x_draw, y_draw, 16, -5, s_scalex*direct, s_scaley, rotacion, c_white, m_alpha)
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)

