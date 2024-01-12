if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, image_xscale, size_y, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, image_xscale, size_y, 0, c_white, 1)
var m1 = 3
var m2 = 4
var m3 = 5
for (v = 0; v < size_y; v++)
{
    for (h = 0; h < size_x; h++)
    {
        if (v == 0)
        {
            if (h == 0)
                index = 0
            else if (h == (size_x - 1))
                index = 2
            else
                index = 1
        }
        else if (v == (size_y - 1))
        {
            if (h == 0)
                index = 9
            else if (h == (size_x - 1))
                index = 11
            else
                index = 10
        }
        else if (h == 0)
            index = m1
        else if (h == (size_x - 1))
            index = m3
        else
            index = m2
        draw_sprite_ext(sprite_index, index, (x_draw + (h * 16)), (y_draw + (v * 16)), 1, 1, 0, c_white, 1)
        if (m1 == 3)
            m1 = 6
        else
            m1 = 3
        if (m2 == 4)
            m2 = 7
        else
            m2 = 4
        if (m3 == 5)
            m3 = 8
        else
            m3 = 5
    }
    if (m1 == 3)
        m1 = 6
    else
        m1 = 3
    if (m2 == 4)
        m2 = 7
    else
        m2 = 4
    if (m3 == 5)
        m3 = 8
    else
        m3 = 5
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
