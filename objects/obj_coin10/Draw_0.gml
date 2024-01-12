if (active == 0)
{
    if (image_speed == 0)
        var anim = image_index
    else
        anim = obj_levelmanager.banim
    draw_sprite_ext(sprite_index, anim, round(x), y, 1, 1, 0, c_white, image_alpha)
}
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, image_alpha)
