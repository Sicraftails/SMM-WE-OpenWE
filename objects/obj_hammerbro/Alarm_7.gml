if (sprite_index == spr_NSMBU_hammerbro_throw)
{
    alarm[7] = 5
    exit
}
sprite_index = spr_NSMBU_hammerbro_jump
image_index = 0
image_speed = 0.5
if (hspeed != 0)
    prev_hspeed = hspeed
hspeed = 0

