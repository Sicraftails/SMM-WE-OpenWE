switch direct_t
{
    case 0:
        draw_sprite_ext(sprite, index, (x + 16), (y + 16), direct, 1, rotacion, c_white, 1)
        break
    case 1:
        draw_sprite_ext(sprite, index, (x + (16 + (size * 16))), (y + 16), direct, 1, rotacion, c_white, 1)
        break
    case 2:
        draw_sprite_ext(sprite, index, (x + 16), (y + (16 + (size * 16))), direct, 1, rotacion, c_white, 1)
        break
    case 3:
        draw_sprite_ext(sprite, index, (x + 16), (y + 16), direct, 1, rotacion, c_white, 1)
        break
}

if (size > 0)
{
    for (var i = 1; i < (size + 1); i++)
    {
        switch direct_t
        {
            case 0:
                draw_sprite_ext(part, index, (x + 16), ((y + 16) + (i * 16)), direct, 1, rotacion, c_white, 1)
                break
            case 1:
                draw_sprite_ext(part, index, ((x + (16 + (size * 16))) - (i * 16)), (y + 16), direct, 1, rotacion, c_white, 1)
                break
            case 2:
                draw_sprite_ext(part, index, (x + 16), ((y + (16 + (size * 16))) - (i * 16)), direct, 1, rotacion, c_white, 1)
                break
            case 3:
                draw_sprite_ext(part, index, ((x + 16) + (i * 16)), (y + 16), direct, 1, rotacion, c_white, 1)
                break
        }

    }
}
