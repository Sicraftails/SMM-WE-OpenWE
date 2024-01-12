if instance_exists(obj_mario)
    draw_sprite_ext(sprite_index, image_index, screen_round(x), screen_round(y), image_xscale, image_yscale, image_angle, c_white, obj_mario.image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, screen_round(x), screen_round(y), image_xscale, image_yscale, image_angle, c_white, 1)
if (instance_exists(obj_invincibility) && global.effect_star == 1)
{
    shader_set(sha_blendreplace)
    if instance_exists(obj_mario)
        draw_sprite_ext(sprite_index, image_index, screen_round(x), screen_round(y), image_xscale, image_yscale, image_angle, obj_mario.blend_star, obj_invincibility.flashAlpha)
    else if instance_exists(obj_player_goal_parent)
        draw_sprite_ext(sprite_index, image_index, screen_round(x), screen_round(y), image_xscale, image_yscale, image_angle, obj_player_goal_parent.blend_star, obj_player_goal_parent.flashAlpha)
    shader_reset()
}
