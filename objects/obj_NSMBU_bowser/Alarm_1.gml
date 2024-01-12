if (vspeed == 0 && jump == 0 && state == 1 && multi_fire == 0)
{
    if (sprite_index == spr_NSMBU_bowser_walk && image_index > 3)
    {
        alarm[1] = 2
        exit
    }
    fire_anim = 1
}
else
    alarm[1] = 1

