with (other.id)
{
    if instance_exists(obj_mario)
    {
        event_user(0)
        event_user(1)
        event_user(2)
        event_user(3)
        event_user(4)
        event_user(5)
        event_user(6)
        x = obj_mario.x
        y = obj_mario.y
    }
    else if instance_exists(obj_player_goal_smw)
    {
        event_user(0)
        event_user(1)
        event_user(2)
        event_user(3)
        event_user(4)
        event_user(5)
        event_user(7)
        x = (obj_player_goal_smw.x + pos_x)
        y = (obj_player_goal_smw.y + pos_y)
    }
}

