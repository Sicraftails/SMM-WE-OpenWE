if (obj_levelmanager.editor == 1)
{
    switch global.bg_level
    {
        case "underground":
            color = c_white
            break
        case "castle":
            color = c_white
            break
        case "underwater":
            color = c_white
            break
        case "ghost":
            color = c_white
            break
        default:
            if (global.modo_noche == 1)
            {
                color = c_white
                break
            }
            else
                color = c_black
    }

    num_tile_ancho = 384
    num_ancho = ceil((room_width / num_tile_ancho))
    for (i = 0; i < num_ancho; i++)
        draw_sprite_ext(spr_tile_grid, 0, (i * num_tile_ancho), 0, 1, 1, 0, color, image_alpha)
}

