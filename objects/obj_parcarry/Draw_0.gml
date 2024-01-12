if (enemy == 1 && obj != obj_bulletbill && obj != obj_bulletbull_red && obj != obj_banzaibill)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), direct, -1, image_angle, c_white, 1)
else if (enemy == 1 && obj == obj_banzaibill)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), (-direct), 1, image_angle, c_white, 1)
else if (hold == 1)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, image_angle, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), direct, 1, image_angle, c_white, 1)
