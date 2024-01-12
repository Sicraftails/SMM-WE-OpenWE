if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_skewertrunk
    skewer_down = spr_NSMBU_skewer_down
    skewer_up = spr_NSMBU_skewer_up
    skewer_left = spr_NSMBU_skewer_left
    skewer_right = spr_NSMBU_skewer_right
}
else
{
    sprite_index = spr_skewertrunk
    skewer_down = spr_skewer_down
    skewer_up = spr_skewer_up
    skewer_left = spr_skewer_left
    skewer_right = spr_skewer_right
}
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    {
        var dark = 1
    }
    else
    {
        dark = 0
    }
    switch global.apariencia
    {
        case 0:
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            if (dark == 1)
                image_index = 3
            else
                image_index = 2
            break
        case 2:
            image_index = 4
            break
    }

image_speed = 0
parent_y = (y - 32)
ready = 0
direct_t = 1
rotacion = 0
vuelta = 1
groundpount_cont = 0
alarm[0] = 60


