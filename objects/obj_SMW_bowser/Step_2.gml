if (state == 1)
{
    if (turning == 1)
    {
        if (sprite_index != spr_bowser_turning)
        {
            sprite_index = spr_bowser_turning
            image_index = 0
        }
        if (image_index >= 2.9)
        {
            turning = 0
            direct = (-direct)
            alarm[10] = 1
        }
        else
            image_speed = 0.1
    }
    else if (fire == 1)
    {
        if (sprite_index != spr_bowser_fire)
        {
            sprite_index = spr_bowser_fire
            image_index = 0
        }
        if (image_index >= 1.9)
        {
            image_speed = 0
            image_index = 1.9
        }
        else
            image_speed = 0.1
    }
    else
    {
        sprite_index = spr_bowser_walk
        if (instance_exists(obj_mario) && obj_mario.x > x)
            image_speed = 0.14
        else
            image_speed = 0.09
    }
}
else if (state == 2)
{
    if (turning == 1)
        turning = 0
    if (fire == 1)
    {
        if (sprite_index != spr_bowser_fire)
        {
            sprite_index = spr_bowser_fire
            image_index = 0
        }
        if (image_index >= 1.9)
        {
            image_speed = 0
            image_index = 1.9
        }
        else
            image_speed = 0.1
    }
    else
    {
        sprite_index = spr_bowser_jump
        image_speed = 0
        image_index = 0
    }
}
else if (state > 2 && state < 5)
{
    if (sprite_index != spr_bowser_atack)
    {
        sprite_index = spr_bowser_atack
        image_index = 0
    }
    if (state == 4)
    {
        image_speed = 0
        image_index = 3
    }
    else if (image_index >= 2.9)
    {
        image_speed = 0
        image_index = 2.9
    }
    else
        image_speed = 0.1
}
else if (state >= 5)
{
    if (state == 6)
    {
        sprite_index = spr_bowser_big_fire
        image_speed = 0.1
    }
    else
    {
        if (sprite_index != spr_bowser_prepare_fire)
        {
            sprite_index = spr_bowser_prepare_fire
            image_index = 0
        }
        if (image_index >= 4.9)
        {
            image_speed = 0
            image_index = 4.9
        }
        else
            image_speed = 0.1
    }
}

