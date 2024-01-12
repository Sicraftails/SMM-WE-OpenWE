var player;
if (global.yoshi == 0)
{
    if instance_exists(obj_helmet)
    {
        player = collision_rectangle((bbox_left - 1), (bbox_top - 1), (bbox_right + 1), bbox_bottom, obj_mario, 0, 0)
        if player
        {
            with (player)
                event_user(0)
        }
    }
    else
    {
        player = collision_rectangle((bbox_left - 1), (bbox_top - 1), (bbox_right + 1), (bbox_bottom + 12), obj_mario, 0, 0)
        if player
        {
            with (player)
                event_user(0)
        }
    }
}
else if instance_exists(obj_helmet)
{
    player = collision_rectangle((bbox_left - 1), (bbox_top + 2), (bbox_right + 1), bbox_bottom, obj_mario, 0, 0)
    if player
    {
        with (player)
            event_user(0)
    }
}
else
{
    player = collision_rectangle((bbox_left - 1), bbox_top, (bbox_right + 1), (bbox_bottom + 12), obj_mario, 0, 0)
    if (player && (player.y + 16) > (bbox_top - 11))
    {
        with (player)
            event_user(0)
    }
}

