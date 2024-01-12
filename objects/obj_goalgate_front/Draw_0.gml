if instance_exists(obj_ground3)
    draw_sprite_ext(sprite_index, -1, (obj_ground3.x + 32), (obj_ground3.y - 136), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, -1, round(x), (y + 1), 1, 1, 0, c_white, 1)
if (bonus == 1)
{
    if (bonus_a == -1)
        draw_sprite(sprite_anim, bonus_b, (x - 31), (y + 39))
    else
    {
        draw_sprite(sprite_anim, bonus_a, (x - 51), (y + 39))
        draw_sprite(sprite_anim, bonus_b, (x - 11), (y + 39))
    }
}

