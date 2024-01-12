if instance_exists(obj_mario)
{
    if (obj_mario.skidnow == 1 && obj_mario.hspeed > 0)
        direct = -1
    else if (obj_mario.modo_vuelo == 1 || obj_mario.stompstyle == 1 || obj_mario.state == 3 || obj_mario.turning == 1 || obj_mario.skidnow == 1)
        direct = 1
    else if instance_exists(obj_yoshi2)
        direct = obj_yoshi2.direct
    else
        direct = obj_mario.direct
}
else if instance_exists(obj_player_goal_smw)
    direct = obj_player_goal_smw.direct
