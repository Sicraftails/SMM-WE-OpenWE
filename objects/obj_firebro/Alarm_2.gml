if (sprite_index == spr_NSMBU_firebro_jump)
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
        sprite_index = spr_NSMBU_firebro_throw
        image_index = 0
        image_speed = 0.5
    }
    else
    {
        alarm[3] = 10
        alarm[2] = 30
    }
}
else
{
    trow = 0
    hammers = choose(1, 2)
    hspeed = prev_hspeed
    if (global.apariencia == 3)
        alarm[2] = 120
    else
        alarm[2] = 120
}


