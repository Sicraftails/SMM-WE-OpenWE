if (sprite_index == spr_NSMBU_hammerbro_jump)
{
    alarm[2] = 5
    exit
}
if (hammers > 0)
{
    trow = 1
    hammers--
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
    if (global.apariencia == 3)
    {
        sprite_index = spr_NSMBU_hammerbro_throw
        image_index = 0
        image_speed = 0.5
    }
    else
    {
        alarm[3] = 10
        alarm[2] = 20
    }
}
else
{
    trow = 0
    hammers = (0 + random(round(3)))
    hspeed = prev_hspeed
    if (global.apariencia == 3)
        alarm[2] = 120
    else
        alarm[2] = 80
}


