if ((obj_player_goal_smb1.ystart + 32) <= (y + 31))
{
    with (instance_create((x + 12), (y + 149), obj_score_flag))
    {
        limit = (y + 14)
        event_user(7)
    }
}
else if ((obj_player_goal_smb1.ystart + 32) <= (y + 51))
{
    with (instance_create((x + 12), (y + 146), obj_score_flag))
    {
        limit = (obj_player_goal_smb1.ystart + 16)
        event_user(6)
    }
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 73))
{
    with (instance_create((x + 12), (y + 146), obj_score_flag))
    {
        limit = (obj_player_goal_smb1.ystart + 16)
        event_user(3)
    }
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 96))
{
    with (instance_create((x + 12), (y + 146), obj_score_flag))
    {
        limit = (obj_player_goal_smb1.ystart + 16)
        event_user(2)
    }
}
else if ((obj_player_goal_smb1.ystart + 16) <= (y + 128))
{
    with (instance_create((x + 12), (y + 146), obj_score_flag))
    {
        limit = (obj_player_goal_smb1.ystart + 16)
        event_user(1)
    }
}
else
{
    with (instance_create((x + 12), (y + 146), obj_score_flag))
    {
        limit = (obj_player_goal_smb1.ystart + 16)
        event_user(0)
    }
}

