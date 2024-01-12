if (sprite_index == spr_NSMBU_sledgebro_jump)
{
    alarm[3] = 5
    exit
}
if (gravity == 0 && volar == 0)
{
    trow = 1
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
    if (global.apariencia == 3)
    {
        sprite_index = spr_NSMBU_sledgebro_throw
        image_index = 0
        image_speed = 0.5
    }
    else
    {
        alarm[4] = 10
        alarm[3] = 80
    }
}
else
    alarm[3] = 1

