if instance_exists(obj_ground3)
    draw_sprite_ext(sprite_index, -1, obj_ground3.x, (obj_ground3.y - 136), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, -1, x, (y + 1), 1, 1, 0, c_white, 1)

