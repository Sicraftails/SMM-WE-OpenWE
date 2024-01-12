if instance_exists(obj_mario)
{
    draw_sprite_ext(sprite_index, image_index, (obj_mario.x + pos_x), ((obj_mario.y + pos_y) + 1), direct, 1, 0, c_white, obj_mario.image_alpha)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_blendreplace)
        draw_sprite_ext(sprite_index, image_index, (obj_mario.x + pos_x), ((obj_mario.y + pos_y) + 1), direct, 1, 0, obj_mario.blend_star, obj_invincibility.flashAlpha)
        shader_reset()
    }
}
else if instance_exists(obj_player_goal_smw)
    draw_sprite_ext(sprite_index, image_index, (obj_player_goal_smw.x + pos_x), ((obj_player_goal_smw.y + pos_y) + 1), direct, 1, 0, c_white, obj_player_goal_smw.image_alpha)
