if instance_exists(obj_mario)
{
    global.timer = 0
    alarm[10] = 1
    instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_timeup)
    with (instance_create(obj_mario.x, obj_mario.y, obj_deadmario))
        timeup = 1
    with (obj_mario)
        instance_destroy()
    exit
}
else
    alarm[4] = 1

