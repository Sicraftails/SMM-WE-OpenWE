if instance_exists(obj_mario)
{
    if instance_exists(obj_yoshi2)
        pos_x = (-((4 * obj_yoshi2.direct)))
    else if instance_exists(obj_kuribo_drybones)
    {
        if (global.jugador == 0)
            pos_x = (-((2 * obj_mario.direct)))
        else
            pos_x = 0
    }
    else
        pos_x = 0
}
else if instance_exists(obj_player_goal_smw)
{
    if instance_exists(obj_yoshi2)
        pos_x = (-((4 * obj_player_goal_smw.direct)))
    else if instance_exists(obj_kuribo_drybones)
    {
        if (global.jugador == 0)
            pos_x = (-((2 * obj_player_goal_smw.direct)))
        else
            pos_x = 0
    }
    else
        pos_x = 0
}
