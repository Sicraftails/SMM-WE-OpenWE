if ((value == 1) and instance_exists(obj_shell_held)){
if (sprite_height < 20)
{
    if (obj_shell_held.flip == 0)
        draw_sprite_ext(sprite_index, obj_shell_held.image_index, round(x), y, obj_shell_held.direct, 1, 0, c_white, image_alpha)
    else
        draw_sprite_ext(sprite_index, obj_shell_held.image_index, round(x), (y + 17), obj_shell_held.direct, -1, 0, c_white, image_alpha)
}
else if (obj_shell_held.flip == 0)
    draw_sprite_ext(sprite_index, obj_shell_held.image_index, round(x), y, obj_shell_held.direct, 1, 0, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, obj_shell_held.image_index, round(x), y, obj_shell_held.direct, -1, 0, c_white, image_alpha)
}
else if ((value == 2) and instance_exists(obj_bowserjr_shell))
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
