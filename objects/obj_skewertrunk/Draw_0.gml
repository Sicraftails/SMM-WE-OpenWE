switch direct_t
{
    case 1:
        draw_sprite_tiled_area_ext(skewer_down, image_index, (round(x) - 32), round(y), (x - 32), parent_y, (x + 32), y, c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rotacion, c_white, 1)
        break
    case 2:
        draw_sprite_tiled_area_ext(skewer_right, image_index, round(x), (round(y) - 32), parent_y, (y - 32), x, (y + 32), c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rotacion, c_white, 1)
        break
    case 3:
        draw_sprite_tiled_area_ext(skewer_up, image_index, (round(x) - 32), round(y), (x - 32), y, (x + 32), parent_y, c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rotacion, c_white, 1)
        break
    case 4:
        draw_sprite_tiled_area_ext(skewer_left, image_index, round(x), (round(y) - 32), x, (y - 32), parent_y, (y + 32), c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rotacion, c_white, 1)
        break
}



