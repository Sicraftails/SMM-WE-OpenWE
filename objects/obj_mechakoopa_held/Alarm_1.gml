if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_mechakoopa_green_shake
    image_index = 0
    image_speed = 0.3
    alarm[2] = 200
    exit
}
if (shake < 10)
{
    x++
    shake++
    alarm[2] = 5
}
else
{
    alarm[4] = 8
    image_index = 0
}

