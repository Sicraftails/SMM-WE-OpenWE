if (vspeed == 0)
{
    if (wings == 1)
    {
        if (global.apariencia == 0)
        {
            sprite_index = s_hammer
            image_speed = 0.15
        }
        alarm[11] = 20
    }
    else if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_bowserjr_fire
        image_speed = 0
        image_index = 0
        alarm[2] = 20
    }
    fire_anim = 1
    hspeed = 0
}
else
    alarm[1] = 1

