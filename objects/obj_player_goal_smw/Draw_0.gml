if (global.yoshi > 0)
{
    if instance_exists(obj_yoshi_red)
    {
        var s_yoshi = spr_yoshi_red
        var s_yoshi_jump = spr_yoshi_jump_red
    }
    else if instance_exists(obj_yoshi_blue)
    {
        var s_yoshi = spr_yoshi_blue
        var s_yoshi_jump = spr_yoshi_jump_blue
    }
    else
    {
        s_yoshi = spr_yoshi
        s_yoshi_jump = spr_yoshi_jump
    }
    if (vspeed != 0)
    {
        if (vspeed < 0)
            var jump = 0
        else
            jump = 1
        draw_sprite_ext(s_yoshi_jump, jump, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
        draw_sprite_ext(scr_marioride(), image_index, round(x), (y - 8), direct, 1, 0, c_white, image_alpha)
        if (instance_exists(obj_invincibility) && global.effect_star == 1)
        {
            shader_set(sha_blendreplace)
            draw_sprite_ext(scr_marioride(), image_index, round(x), (y - 8), direct, 1, 0, obj_invincibility.blend_star, obj_invincibility.flashAlpha)
            shader_reset()
        }
    }
    else
    {
        if (pose == 1)
        {
            var pos = 0
            var sprite = scr_mario_yoshi_goal()
        }
        else
        {
            pos = image_index
            sprite = scr_marioride()
        }
        draw_sprite_ext(s_yoshi, pos, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
        draw_sprite_ext(sprite, image_index, round(x), (y - 8), direct, 1, 0, c_white, image_alpha)
        if (instance_exists(obj_invincibility) && global.effect_star == 1)
        {
            shader_set(sha_blendreplace)
            draw_sprite_ext(sprite, image_index, round(x), (y - 8), direct, 1, 0, blend_star, flashAlpha)
            shader_reset()
        }
    }
}
else
{
    draw_sprite_ext(sprite_index, image_index, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_blendreplace)
        draw_sprite_ext(sprite_index, image_index, round(x), (y + 1), direct, 1, 0, obj_invincibility.blend_star, obj_invincibility.flashAlpha)
        shader_reset()
    }
}
