if (cooldown > 0)
{
    draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, make_colour_rgb(255, 60, 109), (cooldown / 4))
    if (wings == 1 && ready == 0)
        draw_sprite_ext(sprite_wings, wings_anim, (x - (wings_x * direct)), (y - 26), direct, 1, 0, make_colour_rgb(255, 60, 109), (cooldown / 4))
}
else
{
    draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, 1)
    if (wings == 1 && ready == 0)
        draw_sprite_ext(sprite_wings, wings_anim, (x - (wings_x * direct)), (y - 26), direct, 1, 0, c_white, 1)
}
