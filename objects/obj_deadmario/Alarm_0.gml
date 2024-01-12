if (global.apariencia == 3)
{
    switch sprite_index
    {
        case spr_NSMBU_mario_small_dead1:
            sprite_index = spr_NSMBU_mario_small_dead2
            break
        case spr_NSMBU_mario_big_dead1:
            sprite_index = spr_NSMBU_mario_big_dead2
            break
        case spr_NSMBU_mario_fire_dead1:
            sprite_index = spr_NSMBU_mario_fire_dead2
            break
        case spr_NSMBU_mario_helice_dead1:
            sprite_index = spr_NSMBU_mario_helice_dead2
            break
        case spr_NSMBU_mario_arcon_dead1:
            sprite_index = spr_NSMBU_mario_arcon_dead2
            break
        case spr_NSMBU_mario_penguin_dead1:
            sprite_index = spr_NSMBU_mario_penguin_dead2
            break
    }

    image_index = 0
    image_speed = 0.5
    gravity = 0.15
    vspeed = -3.225
    anim_dead2 = 1
}
else
{
    image_speed = 0.15
    gravity = 0.2
    vspeed = -3.5
}
if (global.apariencia < 2)
    alarm[1] = 160
else
    alarm[1] = 120
if (global.nm_play != 0)
    instance_create(x, y, obj_icon_dead)

