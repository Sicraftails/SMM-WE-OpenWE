if (ready == 0)
{
    image_speed = 0
    image_index = 24
    depth = -12
    if instance_exists(obj_player_goal_smb2)
    {
        with (obj_player_goal_smb2)
            walk = 1
    }
    if instance_exists(solido)
    {
        with (solido)
            instance_destroy()
    }
    alarm[1] = 15
    alarm[2] = 120
}
else
{
    image_speed = 0
    image_index = 0
}

