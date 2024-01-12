if (obj_levelmanager.editor == 0)
    exit
switch global.apariencia
{
    case 0:
        var sprite_nube = spr_SMB_cloud_latiku
        break
    case 1:
        sprite_nube = spr_SMB3_cloud_latiku
        break
    case 2:
        sprite_nube = spr_cloud_latiku
        break
    case 3:
        sprite_nube = spr_NSMBU_cloud_latiku
        break
}

if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, 1, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, x_draw, y_draw, s_scalex, s_scaley, rotacion, c_white, m_alpha)
if (wings == 1)
    draw_sprite_ext(w_sprite, global.apariencia, (x_draw + wings_x), (y_draw - wings_y), s_scalex, s_scaley, 1, c_white, m_alpha)
draw_sprite_ext(sprite_nube, 0, (x_draw + 8), (y_draw + 16), s_scalex, s_scaley, 0, c_white, m_alpha)
if (sprout != 0)
    draw_sprite(spr_icon_hidden, 0, x_draw, (y_draw + 16))
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
