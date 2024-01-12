if (wings == 1)
{
    draw_sprite_ext(sprite_wings, wings_anim, (x - 13), (y - 26), 1, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_wings, wings_anim, (x + 13), (y - 26), -1, 1, 0, c_white, 1)
}
draw_sprite_ext(sprite_index, image_index, round(x), round(y), direct, 1, 0, c_white, 1)
draw_sprite_ext(sprite_cloud, cloud_index, round(x), round(y), 1, 1, 0, c_white, 1)
