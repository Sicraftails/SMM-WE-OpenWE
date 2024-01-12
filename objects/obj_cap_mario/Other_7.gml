if instance_exists(obj_mario)
{
    if (sprite_index == s_cap_stay_start && (obj_mario.hspeed > 0 || obj_mario.hspeed < 0))
        sprite_index = spr_cap_run
    else if (sprite_index == s_cap_start_stay)
        sprite_index = s_cap_stay
    else if (sprite_index == s_cap_stay_start && obj_mario.hspeed == 0)
        sprite_index = s_cap_start_stay
    else if (sprite_index == spr_cap_stay_fall)
        sprite_index = spr_cap_fall
}
else if instance_exists(obj_player_goal_smw)
{
    if (sprite_index == s_cap_stay_start && (obj_player_goal_smw.hspeed > 0 || obj_player_goal_smw.hspeed < 0))
        sprite_index = spr_cap_run
    else if (sprite_index == s_cap_start_stay)
        sprite_index = s_cap_stay
    else if (sprite_index == s_cap_stay_start && obj_player_goal_smw.hspeed == 0)
        sprite_index = s_cap_start_stay
    else if (sprite_index == spr_cap_stay_fall)
        sprite_index = spr_cap_fall
}
