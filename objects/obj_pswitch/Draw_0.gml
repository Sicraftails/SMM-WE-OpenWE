if (inup == 0)
    event_inherited()
else
    draw_sprite_ext(sprite_index, image_index, (x + 16), (y + 16), 1, 1, 180, c_white, 1)
if (wings == 1)
{
    if (global.apariencia > 1)
        draw_sprite(sprite_wings, wings_anim, x, y)
    else
        draw_sprite(sprite_wings, wings_anim, (x + 8), y)
}
