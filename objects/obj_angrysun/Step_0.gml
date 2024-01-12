if (ready == 0)
{
    speed = 4
    move_towards_point((camera_get_view_x(view_get_camera(0)) + 64), (camera_get_view_y(view_get_camera(0)) + 48), speed)
    if (x > (camera_get_view_x(view_get_camera(0)) + 56) && x < (camera_get_view_x(view_get_camera(0)) + 72) && y > (camera_get_view_y(view_get_camera(0)) + 40) && y < (camera_get_view_y(view_get_camera(0)) + 56))
    {
        speed = 0
        ready = 1
    }
}
else if (ready == 1)
{
    x = (camera_get_view_x(view_get_camera(0)) + 64)
    y = (camera_get_view_y(view_get_camera(0)) + 48)
    if instance_exists(obj_mario)
    {
        if (global.apariencia == 2 && global.modo_noche == 0)
            sprite_index = spr_angrysun_atack
        ready = 2
        alarm[0] = 1
        movement = instance_create(x, y, obj_angrysun_movement)
    }
}
else if instance_exists(movement)
{
    x = (camera_get_view_x(view_get_camera(0)) + movement.x)
    y = (camera_get_view_y(view_get_camera(0)) + movement.y)
}
else
{
    x = (camera_get_view_x(view_get_camera(0)) + 64)
    y = (camera_get_view_y(view_get_camera(0)) + 48)
}

