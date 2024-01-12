if (instance_exists(obj_player_goal_smw_castle) && instance_exists(obj_castle_front))
{
    if (obj_player_goal_smw_castle.y == (y + 16) && obj_player_goal_smw_castle.x > (x + 37) && obj_player_goal_smw_castle.x < (x + 40) && obj_player_goal_smw_castle.vspeed == 0)
    {
        with (obj_castle_front)
            depth = -10
        if (global.apariencia == 3)
        {
            with (obj_player_goal_smw_castle)
                h = 0
        }
        else
        {
            with (obj_player_goal_smw_castle)
                h = 0
        }
    }
}

