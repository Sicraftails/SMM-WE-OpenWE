var xx, yy, i;
if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, image_yscale, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
switch direct_t
{
    case 0:
        if (plant == 1)
            draw_sprite_ext(spr_pplant_res, global.apariencia, (x_draw + 8), (y_draw - 8), 1, 1, rotacion, c_white, m_alpha)
        draw_sprite_ext(sprite, image_index, (x_draw + 16), (y_draw + 16), s_scalex, s_scaley, rotacion, c_white, m_alpha)
        xx = (x_draw + 16)
        yy = (y_draw + 16)
        break
    case 1:
        if (plant == 1)
            draw_sprite_ext(spr_pplant_res, global.apariencia, (x_draw + (40 + (size * 16))), (y_draw + 8), 1, 1, rotacion, c_white, m_alpha)
        draw_sprite_ext(sprite, image_index, (x_draw + (16 + (size * 16))), (y_draw + 16), s_scalex, s_scaley, rotacion, c_white, m_alpha)
        xx = (x_draw + (16 + (size * 16)))
        yy = (y_draw + 16)
        break
    case 2:
        if (plant == 1)
            draw_sprite_ext(spr_pplant_res, global.apariencia, (x_draw + 24), (y_draw + (40 + (size * 16))), 1, 1, rotacion, c_white, m_alpha)
        draw_sprite_ext(sprite, image_index, (x_draw + 16), (y_draw + (16 + (size * 16))), s_scalex, s_scaley, rotacion, c_white, m_alpha)
        xx = (x_draw + 16)
        yy = (y_draw + (16 + (size * 16)))
        break
    case 3:
        if (plant == 1)
            draw_sprite_ext(spr_pplant_res, global.apariencia, (x_draw - 8), (y_draw + 24), 1, 1, rotacion, c_white, m_alpha)
        draw_sprite_ext(sprite, image_index, (x_draw + 16), (y_draw + 16), s_scalex, s_scaley, rotacion, c_white, m_alpha)
        xx = (x_draw + 16)
        yy = (y_draw + 16)
        break
}

if (size > 0)
{
    for (i = 1; i < (size + 1); i++)
    {
        switch direct_t
        {
            case 0:
                draw_sprite_ext(part, image_index, (x_draw + 16), ((y_draw + 16) + (i * 16)), s_scalex, s_scaley, rotacion, c_white, m_alpha)
                break
            case 1:
                draw_sprite_ext(part, image_index, ((x_draw + (16 + (size * 16))) - (i * 16)), (y_draw + 16), s_scalex, s_scaley, rotacion, c_white, m_alpha)
                break
            case 2:
                draw_sprite_ext(part, image_index, (x_draw + 16), ((y_draw + (16 + (size * 16))) - (i * 16)), s_scalex, s_scaley, rotacion, c_white, m_alpha)
                break
            case 3:
                draw_sprite_ext(part, image_index, ((x_draw + 16) + (i * 16)), (y_draw + 16), s_scalex, s_scaley, rotacion, c_white, m_alpha)
                break
        }

    }
}
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_pipes_move_drag, anim, xx, yy, 1, 1, rotacion, c_white, 1)
    else if (mouse_up == 1)
        draw_sprite_ext(spr_tuberias_move, 0, xx, yy, 1, 1, rotacion, c_white, 1)
}
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

