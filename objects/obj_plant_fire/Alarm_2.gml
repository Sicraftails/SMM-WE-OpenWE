shoot = 1
if (global.apariencia == 3)
{
    if (sprite_index == s_up)
        sprite_index = spr_NSMBU_pplant_up_shoot
    else
        sprite_index = spr_NSMBU_pplant_down_shoot
    image_index = 0
    image_speed = 0.25
}
else
{
    image_speed = 0
    image_index = 1
    alarm[3] = 30
}

