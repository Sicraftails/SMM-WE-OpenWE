if (obj_levelmanager.editor == 1 && global.player_trail == 1)
{
    if (sprite_capa != spr_SMB_mario_small_idle && depth_cap == 0)
        draw_sprite_ext(sprite_capa, index_capa, round(x), round(y), direct_capa, 1, 0, c_white, 0.5)
    if (drybones == 1)
    {
        if (sprite_m_yoshi != spr_SMB_mario_small_idle)
            draw_sprite_ext(sprite_m_yoshi, index_m_yoshi, x_m_yoshi, y_m_yoshi, image_xscale, 1, 0, c_white, 0.5)
        draw_sprite_ext(sprite_index, image_index, round(x), y_draw, image_xscale, 1, 0, c_white, 0.5)
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, round(x), y_draw, image_xscale, 1, image_angle, c_white, 0.5)
        if (sprite_m_yoshi != spr_SMB_mario_small_idle)
            draw_sprite_ext(sprite_m_yoshi, index_m_yoshi, x_m_yoshi, y_m_yoshi, image_xscale, 1, 0, c_white, 0.5)
    }
    if (sprite_capa != spr_SMB_mario_small_idle && depth_cap == 1)
        draw_sprite_ext(sprite_capa, index_capa, round(x), (y - 10), direct_capa, 1, 0, c_white, 0.5)
}

