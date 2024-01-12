var coin;
if instance_exists(obj_shell)
{
    with (obj_shell)
    {
        if (vspeed == 0 && nomatar == 0 && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if ((object_index == obj_buzzybeetle || object_index == obj_buzzybeetle_b || object_index == obj_spiny) && inup == 1 && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
            event_user(9)
        else if (vspeed == 0 && hardness < 99 && object_index != obj_grinder && collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
        else if (object_index == obj_boo && inup > 0 && visible == true && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_muncher)
{
    with (obj_muncher)
    {
        if (vspeed == 0 && collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_galoomba_hold)
{
    with (obj_galoomba_hold)
    {
        if (vspeed == 0 && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_bossparent)
{
    with (obj_bossparent)
    {
        if (vspeed == 0 && collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_coin)
{
    with (obj_coin)
    {
        if (x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            coin = instance_create(x, y, obj_coin_pow)
            coin.sprite_index = sprite_index
            coin.image_speed = image_speed
            coin.hspeed = random_range(-1, 1)
            instance_destroy()
        }
    }
}
if instance_exists(obj_coin10)
{
    with (obj_coin10)
    {
        if (x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236) && active == 0)
        {
            coin = instance_create(x, y, obj_coin_pow)
            coin.sprite_index = sprite_index
            coin.image_speed = image_speed
            coin.hspeed = random_range(-1, 1)
            switch object_index
            {
                case obj_coin50:
                    coin.type = 50
                    break
                case obj_coin30:
                    coin.type = 30
                    break
            }

            instance_destroy()
        }
    }
}
