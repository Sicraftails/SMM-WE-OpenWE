if instance_exists(obj_mario)
{
    if (point_distance(x, y, obj_mario.x, (obj_mario.y + 32)) > 6)
    {
        move_towards_point(obj_mario.x, (obj_mario.y + 32), 6)
        if (camlock == 1 && y == ((room_height - (__view_get((3 << 0), 0) / 2)) - 16))
            y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
    }
    else
    {
        fallow_mario = 0
        speed = 0
    }
}
else if instance_exists(follow)
{
    if (point_distance(x, y, follow.x, (follow.y + 32)) > 6)
    {
        move_towards_point(follow.x, (follow.y + 32), 6)
        if (camlock == 1 && y == ((room_height - (__view_get((3 << 0), 0) / 2)) - 16))
            y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
    }
    else
    {
        fallow_mario = 0
        speed = 0
    }
}
