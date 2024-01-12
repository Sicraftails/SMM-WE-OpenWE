if instance_exists(obj_mario)
{
    if (licking == 1)
    {
        sprite_mario = scr_mario_yoshi_atack()
        index_mario = image_index
        x_mario = (round(x) + obj_mario.shake)
        y_mario = (round(y) - f)
    }
    else if (obj_mario.isduck == 1)
    {
        sprite_mario = scr_mario_yoshi_crouch()
        index_mario = 0
        x_mario = (round(x) + obj_mario.shake)
        y_mario = (round(y) - f)
    }
    else
    {
        sprite_mario = scr_marioride()
        index_mario = image_index
        x_mario = (round(x) + obj_mario.shake)
        y_mario = (round(y) - f)
    }
    draw_sprite_ext(sprite_mario, index_mario, x_mario, y_mario, obj_yoshi2.direct, 1, 0, c_white, obj_mario.image_alpha)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_blendreplace)
        draw_sprite_ext(sprite_mario, index_mario, x_mario, y_mario, obj_yoshi2.direct, 1, 0, obj_mario.blend_star, obj_invincibility.flashAlpha)
        shader_reset()
    }
}
