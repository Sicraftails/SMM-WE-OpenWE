if (global.apariencia != 3)
{
}
if (sprite_index == spr_NSMBU_boomerangbro_throw)
{
    sprite_index = spr_NSMBU_boomerangbro
    image_speed = 0.5
    alarm[2] = 10
    alarm[6] = 1
}
else if (sprite_index == spr_NSMBU_boomerangbro_jump)
{
    sprite_index = spr_NSMBU_boomerangbro
    image_speed = 0.5
    hspeed = prev_hspeed
}
