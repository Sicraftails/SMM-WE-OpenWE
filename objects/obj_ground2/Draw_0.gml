for (v = 0; v < size_y; v++)
{
    for (h = 0; h < size_x; h++)
    {
        if (v == 0)
        {
            if (h == (size_x - 1))
                image_index = 10
            else
                image_index = 21
        }
        else if (h == (size_x - 1))
            image_index = 24
        else
            image_index = 47
        draw_sprite_ext(sprite_index, image_index, (x + (h * 16)), (y + (v * 16)), 1, 1, 0, c_white, 1)
    }
}
switch global.apariencia
{
    case 0:
        var arrow = spr_SMB_arrow_big
        break
    case 1:
        arrow = spr_SMB3_arrow_big
        break
    case 2:
        arrow = spr_arrow_big
        break
    case 3:
        arrow = spr_NSMBU_arrow_start
        break
}

draw_sprite(arrow, arrow_image, (x + 16), (y - 48))
if (obj_levelmanager.editor == 1)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_lianas, anim, (x + 96), y, 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_move_lianas, 0, (x + 96), y, 1, 1, 0, c_white, 1)
}
