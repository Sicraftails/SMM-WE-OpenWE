if ((obj_player_goal_smb1.ystart + 32) <= (y + 31))
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(7)
}
else if ((obj_player_goal_smb1.ystart + 32) <= (y + 51))
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(6)
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 73))
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(3)
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 96))
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(2)
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 128))
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(1)
}
else
{
    with (instance_create((x + 12), (obj_player_goal_nsmbu.y + 8), obj_score_flag))
        event_user(0)
}

