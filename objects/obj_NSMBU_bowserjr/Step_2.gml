if (ready == 1)
	exit
if (state == 1)
{
    if (jump == 1)
    {
        if (sprite_index != s_jump)
        {
            sprite_index = s_jump
            image_index = 0
        }
        if (image_index >= 12 && image_index < 12.5)
        {
            image_index = 13
            if (groundpount_jump == 1)
                alarm[4] = 1
            else
                alarm[0] = 1
        }
        else
            image_speed = 0.5
    }
    else if (groundpount > 0)
    {
        sprite_index = s_groundpount
        image_speed = 0
        image_index = 11
    }
    else if (fire_anim == 1)
    {
        if (wings == 1)
        {
            sprite_index = s_hammer
            image_speed = 0.5
        }
        else
        {
            if (sprite_index != s_fire)
            {
                sprite_index = s_fire
                image_index = 0
            }
            if (image_index >= 11 && image_index < 11.5)
                alarm[8] = 1
        }
    }
    else if (jump == 2)
    {
        if (image_index >= 24.5)
        {
            sprite_index = s_walk
            jump = 0
        }
        else
            image_speed = 0.5
    }
    else
    {
        sprite_index = s_walk
        image_speed = 0.5
    }
}
else if (state == 2)
{
    if (fire_anim == 1)
    {
        fire_anim = 0
        fire = 0
    }
    if (groundpount_wings > 0)
    {
        sprite_index = spr_NSMBU_bowserjr_fly
        image_speed = 0
        image_index = 0
    }
    else if (groundpount_jump > 1)
    {
        if (sprite_index != s_groundpount)
        {
            sprite_index = s_groundpount
            image_index = 0
        }
        if (image_index >= 11.5)
        {
            image_speed = 0
            image_index = 11
            if (groundpount_jump == 2)
                groundpount_jump = 3
        }
        else
            image_speed = 0.5
    }
    else if (jump == 0)
    {
        sprite_index = spr_NSMBU_bowserjr_walk
        image_speed = 0.5
    }
    else if (image_index >= 16.5)
    {
        image_speed = 0
        image_index = 16
    }
    else
        image_speed = 0.5
}
