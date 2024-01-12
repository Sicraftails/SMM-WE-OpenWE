draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, 1)
if (global.powerup == -82)
    var posyy = 24
else
    posyy = 0
if (global.powerup == 3)
    draw_sprite_ext(cap_sprite, cap_index, (x + cap_x), (y + cap_y), direct, 1, 0, c_white, 1)
draw_sprite_ext(sprite, index, round(x), (y + posyy), direct, 1, rotacion, c_white, 1)
if (helmet != 0 && global.powerup != -82)
    draw_sprite_ext(helmet_sprite, helmet_index, x, (y + helmet_y), direct, 1, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, 0.3)


