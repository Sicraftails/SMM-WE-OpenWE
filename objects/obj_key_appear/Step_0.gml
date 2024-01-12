if (vspeed == 0 && ready == 0)
{
    if (global.keys < instance_number(obj_door_lock))
    {
        alarm[0] = 60
        ready = 1
    }
    else
        event_user(0)
}
if (ready == 2)
{
    if instance_exists(obj_doormario)
    {
        x = obj_doormario.x
        y = (obj_doormario.y + 16)
    }
    else if instance_exists(obj_player_warp)
    {
        x = obj_player_warp.x
        y = (obj_player_warp.y + 16)
    }
    else if instance_exists(obj_mario)
    {
        speed = 10
        move_towards_point(obj_mario.x, (obj_mario.y + 16), speed)
    }
}

