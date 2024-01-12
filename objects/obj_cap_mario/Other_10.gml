if instance_exists(obj_mario)
{
    if (obj_mario.state == 3)
        depth = -9
    else if (instance_exists(obj_kuribo_drybones) && obj_mario.hspeed == 0)
        depth = -12
    else if (global.yoshi > 0)
        depth = -10
    else if instance_exists(obj_mario_transform2)
        depth = -7
    else
        depth = -4
}
else if instance_exists(obj_player_goal_smw)
{
    if (instance_exists(obj_kuribo_drybones) && obj_player_goal_smw.speed == 0)
    {
        if (obj_player_goal_smw.pose == 1)
            depth = -4
        else
            depth = -12
    }
    else if (global.yoshi > 0)
    {
        if (obj_player_goal_smw.pose == 1)
            depth = -4
        else
            depth = -10
    }
    else
        depth = -4
}

