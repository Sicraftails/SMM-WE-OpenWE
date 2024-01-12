if (obj_levelmanager.editor == 1)
{
    if instance_exists(obj_ground3)
        draw_sprite_ext(sprite_index, -1, (obj_goalgate.x + 8), (obj_goalgate.y + 9), 1, 1, 0, c_white, 1)
}
else
    draw_sprite_ext(sprite_index, -1, (obj_goalgate.x + 8), (y + 1), 1, 1, 0, c_white, 1)

