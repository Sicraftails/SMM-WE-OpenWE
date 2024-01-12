if (global.apariencia == 0)
    exit
if (state == 1)
{
    if (groundpount > 0)
    {
        sprite_index = s_groundpount
        image_speed = 0
        image_index = 1
    }
    else if (fire_anim == 1)
    {
        if (wings == 1)
        {
            sprite_index = s_hammer
            image_speed = 0.15
        }
        else if (sprite_index != s_fire)
        {
            sprite_index = s_fire
            image_index = 0
        }
    }
    else
    {
        sprite_index = s_walk
        image_speed = 0.1
    }
}
else if (state == 2)
{
    if (fire_anim == 1)
    {
        fire_anim = 0
        fire = 0
    }
    if (groundpount > 0)
    {
        sprite_index = s_groundpount
        image_speed = 0
        image_index = 0
    }
    else
    {
        sprite_index = s_jump
        image_speed = 0
        image_index = 0
    }
}

