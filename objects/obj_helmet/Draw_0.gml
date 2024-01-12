if instance_exists(obj_mario)
{
    if (global.apariencia == 0 && obj_mario.sprite_index == scr_marioclimb())
    {
        if (global.powerup == -77)
            var mpos = 12
        else
            mpos = 6
        draw_sprite_ext(sprite_index, image_index, (obj_mario.x - (mpos * direct)), ((obj_mario.y + pos_y) + 1), direct, 1, rotacion, obj_mario.blend_star, obj_mario.flashAlpha)
    }
    else if instance_exists(obj_mario_pballon)
        draw_sprite_ext(sprite_index, image_index, (obj_mario_pballon.x + obj_mario_pballon.xDiff_h), (obj_mario_pballon.y + obj_mario_pballon.yDiff_h), 1, 1, obj_mario_pballon.direction, c_white, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, obj_mario.x, ((obj_mario.y + pos_y) + 1), direct, 1, rotacion, c_white, image_alpha)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_blendreplace)
        if (global.apariencia == 0 && obj_mario.sprite_index == scr_marioclimb())
        {
            if (global.powerup == -77)
                mpos = 12
            else
                mpos = 6
            draw_sprite_ext(sprite_index, image_index, (obj_mario.x - (mpos * direct)), ((obj_mario.y + pos_y) + 1), direct, 1, rotacion, obj_mario.blend_star, obj_invincibility.flashAlpha)
        }
        else if instance_exists(obj_mario_pballon)
            draw_sprite_ext(sprite_index, image_index, (obj_mario_pballon.x + obj_mario_pballon.xDiff_h), (obj_mario_pballon.y + obj_mario_pballon.yDiff_h), 1, 1, obj_mario_pballon.direction, obj_mario.blend_star, obj_invincibility.flashAlpha)
        else
            draw_sprite_ext(sprite_index, image_index, obj_mario.x, ((obj_mario.y + pos_y) + 1), direct, 1, rotacion, obj_mario.blend_star, obj_invincibility.flashAlpha)
        shader_reset()
    }
}
else if (fallow != obj_lighting && instance_exists(fallow))
{
    if (fallow == obj_player_goal_parent && fallow.sprite_index == scr_marioclimb())
    {
        if (global.powerup == -77)
            mpos = 6
        else
            mpos = 3
        draw_sprite_ext(sprite_index, image_index, (fallow.x - (mpos * direct)), ((fallow.y + pos_y) + 1), direct, 1, rotacion, c_white, image_alpha)
    }
    else
        draw_sprite_ext(sprite_index, image_index, fallow.x, ((fallow.y + pos_y) + 1), direct, 1, rotacion, c_white, image_alpha)
}
