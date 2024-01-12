if (global.apariencia == 3)
{
    if (sprite_index == spr_NSMBU_sledgebro_throw)
    {
        alarm[1] = 5
        exit
    }
    sprite_index = spr_NSMBU_sledgebro_jump
    image_index = 0
    image_speed = 0.5
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
}
else if (vspeed == 0 && sprite_index != spr_sledgebro_throw && sprite_index != spr_SMB3_sledgebro_throw && sprite_index != spr_SMB_sledgebro_throw)
{
    if (hspeed != 0)
        prev_hspeed = hspeed
    alarm[3] = -1
    alarm[4] = -1
    alarm[4] = -1
    alarm[3] = 80
    hspeed = 0
    alarm[2] = 30
}
else
    alarm[1] = 1

