if (obj_player_goal_smw.hspeed != 0)
{
    if (sprite_index == spr_cap_fall || sprite_index == spr_cap_spinjump_fall)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else if (sprite_index != spr_cap_run)
    {
        sprite_index = s_cap_stay_start
        image_speed = 0.1
    }
    else
        image_speed = abs((obj_player_goal_smw.hspeed / 10))
}
else if (obj_player_goal_smw.sprite_index == scr_mariogoal())
{
    sprite_index = s_cap_stay_start
    image_speed = 0
    image_index = 0
}
else if (obj_player_goal_smw.vspeed != 0)
{
    if (obj_player_goal_smw.vspeed > 0)
    {
        if (sprite_index != spr_cap_fall)
        {
            sprite_index = spr_cap_stay_fall
            image_speed = abs((obj_player_goal_smw.vspeed / 8))
        }
        else
            image_speed = 0.4
    }
    else if (sprite_index != s_cap_stay)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else if (sprite_index != s_cap_stay_start && sprite_index != s_cap_start_stay)
{
    if (sprite_index != s_cap_stay)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else
    image_speed = 0.1


