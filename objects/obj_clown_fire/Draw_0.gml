event_inherited()
if (carga == 1)
{
    if (global.apariencia == 3)
        draw_sprite_ext(sprite_carga, anim_fire_charge, (x + (12 * direct)), (y + 9), direct, 1, 0, c_white, 1)
    else
        draw_sprite_ext(sprite_carga, anim_fire_charge, x, (y + 5), direct, 1, 0, c_white, 1)
}
