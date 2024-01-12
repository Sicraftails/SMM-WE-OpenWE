if instance_exists(obj_mario)
{
    x = (obj_mario.x - 8)
    y = obj_mario.y
    if (obj_mario.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    if (!instance_exists(obj_mario_transform2))
    {
        if (obj_mario.sprite_index == scr_marioclimb())
            depth = (obj_mario.depth - 1)
        else if instance_exists(obj_yoshi2)
            depth = (obj_yoshi2.depth + 1)
        else if instance_exists(obj_mario_pballon)
            depth = (obj_mario_pballon.depth + 1)
        else
            depth = (obj_mario.depth + 1)
    }
    else
        depth = -5
}
else if instance_exists(obj_doormario)
{
    x = (obj_doormario.x - 8)
    y = obj_doormario.y
    image_speed = 0
    image_index = 0
    depth = (obj_doormario.depth + 1)
}
else if instance_exists(obj_doormario_exit)
{
    x = (obj_doormario_exit.x - 8)
    y = obj_doormario_exit.y
    image_speed = 0
    image_index = 0
    depth = (obj_doormario_exit.depth + 1)
}
else if instance_exists(obj_player_goal_parent)
{
    x = (obj_player_goal_parent.x - 8)
    y = obj_player_goal_parent.y
    if (obj_player_goal_parent.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_goal_parent.depth + 1)
}
else if instance_exists(obj_player_warp)
{
    x = (obj_player_warp.x - 8)
    y = obj_player_warp.y
    if (obj_player_warp.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_warp.depth + 1)
}
if (global.keys > 0 && (!instance_exists(obj_mario_transform2)))
{
    oldx[0] = x
    oldy[0] = (y + 16)
    for (i = amount_previous; i > 0; i -= 1)
    {
        oldx[i] = oldx[(i - 1)]
        oldy[i] = oldy[(i - 1)]
    }
}

