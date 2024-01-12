if instance_exists(obj_mario)
{
    direct = obj_mario.direct
    if (global.powerup == -77)
    {
        var valor = 32
        if (object_index == obj_kuriboshoe2)
            var sprite_mega = spr_SMB_kuriboshoe2_big
        else
            sprite_mega = spr_kuriboshoe_big
    }
    else
    {
        valor = 16
        sprite_mega = sprite_index
    }
    draw_sprite_ext(m_sprite, m_subimagen, x, ((y - valor) - offset), obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
    draw_sprite_ext(sprite_mega, image_index, x, (y - offset), obj_mario.direct, 1, 0, c_white, 1)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_blendreplace)
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - valor) - offset), obj_mario.direct, 1, 0, obj_mario.blend_star, obj_invincibility.flashAlpha)
        draw_sprite_ext(sprite_mega, image_index, x, (y - offset), obj_mario.direct, 1, 0, obj_mario.blend_star, obj_invincibility.flashAlpha)
        shader_reset()
    }
}
else if instance_exists(obj_player_goal_smb3)
{
    draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 16) - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, (y - offset), obj_player_goal_smb3.direct, 1, 0, c_white, 1)
}
else if instance_exists(obj_player_goal_smw_castle)
{
    if (global.powerup == -77)
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 32) - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, obj_player_goal_smw_castle.image_alpha)
        if (object_index == obj_kuriboshoe2)
            draw_sprite_ext(spr_SMB_kuriboshoe2_big, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_kuriboshoe_big, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(m_sprite, m_subimagen, x, ((y - 16) - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_index, image_index, x, (y - offset), obj_player_goal_smw_castle.direct, 1, 0, c_white, 1)
    }
}
