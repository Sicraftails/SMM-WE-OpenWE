audio_play_sound(snd_thwomp_original, 0, false)
if instance_exists(obj_levelmanager)
{
    with (obj_levelmanager)
        alarm[11] = 1
}
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if (vspeed == 0 && hardness < 99 && object_index != obj_grinder && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}
if instance_exists(obj_boomboom)
{
    with (obj_boomboom)
    {
        if (vspeed == 0 && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
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
        if (vspeed == 0 && x < (camera_get_view_x(view_get_camera(0)) + 404) && x > (camera_get_view_x(view_get_camera(0)) - 20) && y > (camera_get_view_y(view_get_camera(0)) - 20) && y < (camera_get_view_y(view_get_camera(0)) + 236))
        {
            dead_h = 1
            event_user(0)
        }
    }
}

