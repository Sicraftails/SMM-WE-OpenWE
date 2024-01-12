if (global.apariencia != 3)
{
}
if (sprite_index == spr_NSMBU_firebro_throw)
{
    sprite_index = spr_NSMBU_firebro
    image_speed = 0.5
    alarm[2] = 10
    alarm[6] = 1
}
else if (sprite_index == spr_NSMBU_firebro_jump)
{
    sprite_index = spr_NSMBU_firebro
    image_speed = 0.5
    hspeed = prev_hspeed
}
