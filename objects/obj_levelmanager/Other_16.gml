if instance_exists(obj_mario)
    follow = obj_mario
else if instance_exists(obj_player_goal_parent)
    follow = obj_player_goal_parent
else if instance_exists(obj_doormario)
    follow = obj_doormario
else if instance_exists(obj_doormario_exit)
    follow = obj_doormario_exit
else if instance_exists(obj_mario_temp)
    follow = obj_mario_temp
else if instance_exists(obj_player_warp)
    follow = obj_player_warp
else if instance_exists(obj_frozenmario)
    follow = obj_frozenmario
else if instance_exists(obj_slider)
    follow = obj_slider
else
    follow = -4

