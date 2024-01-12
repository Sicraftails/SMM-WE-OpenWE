if (instance_exists(obj_player_goal_smb1) && instance_exists(obj_SMB_castle_front))
{
    if (obj_player_goal_smb1.y == (y + 16) && obj_player_goal_smb1.x > (x + 37) && obj_player_goal_smb1.x < (x + 40) && obj_player_goal_smb1.vspeed == 0)
    {
        with (obj_SMB_castle_front)
            depth = -10
        if (active == 0 && global.apariencia != 3)
        {
            alarm[0] = 90
            active = 1
        }
    }
}

