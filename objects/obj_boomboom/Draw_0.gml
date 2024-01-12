var direccion;
if (global.apariencia < 2)
    direccion = 1
else
    direccion = direct
if (cooldown > 0)
    draw_sprite_ext(sprite_index, image_index, round(x), y, direccion, 1, 0, make_colour_rgb(244, 0, 61), (cooldown / 4))
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, direccion, 1, 0, c_white, 1)

