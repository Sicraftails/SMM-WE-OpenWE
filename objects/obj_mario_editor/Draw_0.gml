if (drag == 1 || (mouse_up == 1 && global.cursor == 0))
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 1)
if (global.powerup == 3)
    draw_sprite_ext(spr_cap_stay_start, 0, ((x_draw + 8) + round(hspeed)), ((y_draw - 15) + round(vspeed)), direct, 1, 0, c_white, image_alpha)
if (global.apariencia == 3 && drag == 0)
{
    if (direct == 1)
        draw_sprite_ext(sprite, index, (x_draw + round(hspeed)), ((y_draw + 1) + round(vspeed)), direct, 1, 0, c_white, image_alpha)
    else
        draw_sprite_ext(sprite, index, ((x_draw + 16) + round(hspeed)), ((y_draw + 1) + round(vspeed)), direct, 1, 0, c_white, image_alpha)
}
else
    draw_sprite_ext(sprite, index, ((x_draw + 8) + round(hspeed)), ((y_draw - 15) + round(vspeed)), direct, 1, 0, c_white, image_alpha)
if (global.star_flash == 1 && global.effect_star == 1)
{
    shader_set(sha_blendreplace)
    if (global.apariencia == 3 && drag == 0)
    {
        if (direct == 1)
            draw_sprite_ext(sprite, index, (x_draw + round(hspeed)), ((y_draw + 1) + round(vspeed)), direct, 1, 0, blend_star, flashAlpha)
        else
            draw_sprite_ext(sprite, index, ((x_draw + 16) + round(hspeed)), ((y_draw + 1) + round(vspeed)), direct, 1, 0, blend_star, flashAlpha)
    }
    else
        draw_sprite_ext(sprite, index, ((x_draw + 8) + round(hspeed)), ((y_draw - 15) + round(vspeed)), direct, 1, 0, blend_star, flashAlpha)
    shader_reset()
}
