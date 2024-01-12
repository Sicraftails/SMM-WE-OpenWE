if (global.apariencia != 3)
{
}
if (sprite_index == spr_NSMBU_sledgebro_throw)
{
    sprite_index = spr_NSMBU_sledgebro
    image_speed = 0.5
    alarm[3] = 80
    alarm[5] = 1
}
else if (sprite_index == spr_NSMBU_sledgebro_jump)
{
    sprite_index = spr_NSMBU_sledgebro
    image_speed = 0.5
    hspeed = prev_hspeed
}

