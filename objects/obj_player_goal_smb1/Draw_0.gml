draw_sprite_ext(sprite_index, -1, round(x), (round(y) + 1), direct, 1, 0, c_white, image_alpha)
if (instance_exists(obj_invincibility) && global.effect_star == 1)
{
    shader_set(sha_blendreplace)
    draw_sprite_ext(sprite_index, -1, round(x), (round(y) + 1), direct, 1, 0, obj_invincibility.blend_star, obj_invincibility.flashAlpha)
    shader_reset()
}
