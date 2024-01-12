if (inmario == 1 && instance_exists(obj_mario))
    draw_sprite_ext(sprite_index, image_index, obj_mario.x, (obj_mario.y + 24), direct, 1, 0, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, (round(x) - hspeed), (round(y) - vspeed), direct, 1, 0, c_white, image_alpha)

