if instance_exists(obj_mario)
{
    if (obj_mario.state > 1 || (!collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0)) || y < camera_get_view_y(view_get_camera(0)))
        instance_destroy()
}
else
    instance_destroy()

