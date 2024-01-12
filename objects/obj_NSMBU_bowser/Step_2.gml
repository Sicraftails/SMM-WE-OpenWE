if (state == 1)
{
    if (multi_fire == 1)
    {
        if (sprite_index != spr_NSMBU_bowser_fire_up)
        {
            sprite_index = spr_NSMBU_bowser_fire_up
            image_index = 0
        }
        if (image_index >= 26 && image_index < 26.5)
            alarm[4] = 1
        if (image_index >= 33 && image_index < 33.5)
            alarm[4] = 1
        if (image_index >= 41 && image_index < 41.5)
            alarm[4] = 1
        if (image_index >= 48 && image_index < 48.5)
            alarm[4] = 1
        if (image_index >= 52 && image_index < 52.5)
            alarm[4] = 1
        image_speed = 0.5
    }
    else if (jump == 1)
    {
        if (fire_jump == 1)
        {
            if (sprite_index != spr_NSMBU_bowser_fire_jump)
            {
                sprite_index = spr_NSMBU_bowser_fire_jump
                image_index = 0
            }
            if (image_index >= 12 && image_index < 12.5)
            {
                image_index = 13
                alarm[0] = 1
            }
            else
                image_speed = 0.5
        }
        else
        {
            if (sprite_index != spr_NSMBU_bowser_jump)
            {
                sprite_index = spr_NSMBU_bowser_jump
                image_index = 0
            }
            if (image_index >= 20 && image_index < 20.5)
            {
                image_index = 21
                alarm[0] = 1
            }
            else
                image_speed = 0.5
        }
    }
    else if (turning == 1)
    {
        if (sprite_index != spr_NSMBU_bowser_turning)
        {
            sprite_index = spr_NSMBU_bowser_turning
            image_index = 0
        }
        if (image_index >= 26.4)
        {
            turning = 0
            sprite_index = spr_NSMBU_bowser_walk
            image_index = 1
            direct = (-direct)
            alarm[10] = 1
        }
        else
            image_speed = 0.6
    }
    else if (fire_anim == 1)
    {
        if (sprite_index != spr_NSMBU_bowser_fire)
        {
            sprite_index = spr_NSMBU_bowser_fire
            image_index = 0
        }
        if (image_index >= 25 && image_index < 25.5)
            alarm[2] = 1
        image_speed = 0.5
    }
    else if (jump == 2)
    {
        if (sprite_index != spr_NSMBU_bowser_fall)
        {
            sprite_index = spr_NSMBU_bowser_fall
            if (fire_jump == 1)
            {
                image_index = 14
                fire_jump = 0
            }
            else
                image_index = 0
        }
        if (image_index >= 30.5)
        {
            image_index = 30
            jump = 0
        }
        else
            image_speed = 0.5
    }
    else
    {
        if (sprite_index != spr_NSMBU_bowser_walk)
        {
            sprite_index = spr_NSMBU_bowser_walk
            image_index = 0
        }
        if (instance_exists(obj_mario) && obj_mario.x > x)
            image_speed = 0.7
        else if (direct == -1 && hspeed > 0)
            image_speed = -0.5
        else
            image_speed = 0.5
        if (!outside_view())
        {
            if ((image_index >= 17 && image_index < 18) || (image_index >= -18 && image_index < -17))
            {
                audio_stop_sound(snd_NSMBU_bowser_paso1)
                audio_play_sound(snd_NSMBU_bowser_paso1, 0, false)
            }
            else if ((image_index >= 0 && image_index < 1) || (image_index <= 0 && image_index > -1))
            {
                audio_stop_sound(snd_NSMBU_bowser_paso2)
                audio_play_sound(snd_NSMBU_bowser_paso2, 0, false)
            }
        }
    }
}
else if (state == 2)
{
    if (turning == 1)
        turning = 0
    if (fire_anim == 1)
    {
        if (sprite_index != spr_NSMBU_bowser_fire_jump)
        {
            sprite_index = spr_NSMBU_bowser_fire_jump
            image_index = 0
        }
        if (image_index >= 15 && image_index < 15.5)
            alarm[2] = 1
        image_speed = 0.5
    }
    else if (fire_jump == 1)
    {
        if (image_index >= 34 && image_index < 34.5)
            alarm[2] = 1
        if (image_index >= 43)
        {
            image_speed = 0
            image_index = 43
        }
        else
            image_speed = 0.5
    }
    else if (vspeed > 0)
    {
        sprite_index = spr_NSMBU_bowser_fall
        if (image_index >= 12.5)
        {
            image_speed = 0
            image_index = 12
        }
        else
            image_speed = 0.5
    }
    else
    {
        sprite_index = spr_NSMBU_bowser_jump
        if (image_index >= 51.5)
        {
            image_speed = 0
            image_index = 51
        }
        else
            image_speed = 0.5
    }
}

