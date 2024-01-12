if (global.powerup == 0)
    mask_index = spr_smallmask
else
    mask_index = spr_bigmask
if (ready_move == 1)
{
    if (gravity == 0)
    {
        sprite_index = scr_NSMBU_walk(swim)
        if (swim == 1)
            image_speed = 0.5
        else
            image_speed = 1.5
    }
    else if (place_free(x, (y + 1)) && vspeed > 0)
    {
        switch jump_type
        {
            case 1:
                sprite_index = scr_NSMBU_jump1()
                break
            case 2:
                sprite_index = scr_NSMBU_jump2()
                break
            case 3:
                sprite_index = scr_NSMBU_jump3()
                break
        }

        if (image_index >= 34.5)
        {
            image_speed = 0
            image_index = 34
        }
        else
            image_speed = 0.5
    }
    else
    {
        switch jump_type
        {
            case 1:
                sprite_index = scr_NSMBU_jump1()
                break
            case 2:
                sprite_index = scr_NSMBU_jump2()
                break
            case 3:
                sprite_index = scr_NSMBU_jump3()
                break
        }

        if (image_index >= 19.5)
        {
            image_speed = 0
            image_index = 19.5
        }
        else
            image_speed = 0.5
    }
}
if (ready < 2)
    sprite_index = scr_NSMBU_climb_pole()
else if (sprite_index == scr_NSMBU_goal_pole())
{
    if (image_index >= 13.5)
    {
        image_speed = 0
        image_index = 13
    }
    else
        image_speed = 0.5
    if (gravity == 0 && salto == 1)
    {
        sprite_index = scr_NSMBU_standup_pole()
        image_index = 0
        hspeed = 0
    }
}
else if (sprite_index == scr_NSMBU_standup_pole())
{
    if (image_index >= 8.7)
    {
        sprite_index = scr_NSMBU_walk(swimming)
        image_index = 0
        image_speed = 1.2
        moverse = 1
        hspeed = 1.5
        audio_play_sound(choose(snd_NSMBU_goal, snd_NSMBU_goal2), 0, false)
    }
    else
    {
        image_speed = 0.3
        hspeed = 0
    }
}
