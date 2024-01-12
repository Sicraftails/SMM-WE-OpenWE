vspeed = 1.5
if (global.apariencia == 3 && instance_exists(obj_flagpole) && instance_exists(obj_player_goal_nsmbu))
{
    with (instance_create(x, (obj_flagpole.y + 135), obj_NSMBU_flag_mario))
        limite = (obj_player_goal_nsmbu.y + 16)
}

